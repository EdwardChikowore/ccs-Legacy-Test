module DownloadHelpers
  TIMEOUT = 10
  PATH = '/chrome://downloads/'.freeze

  def downloads
    Dir[PATH.join('*')]
  end

  def download
    downloads.first
  end

  def download_content
    wait_for_download
    File.read(download)
  end

  def wait_for_download
    Timeout.timeout(TIMEOUT) do
      sleep 0.1 until downloaded?
    end
  end

  def clear_downloads
    FileUtils.rm_f(downloads)
  end
end

def downloaded_file_name
  page.driver.execute_script('window.open()')
  page.driver.switch_to_window(page.driver.window_handles.last)
  page.visit('chrome://downloads')
  page.driver.execute_script("return document.querySelector('downloads-manager').shadowRoot.querySelector('#downloadsList downloads-item').shadowRoot.querySelector('div#content  #file-link').text")
end

def close_browser_tab
  page.driver.browser.close
  page.driver.switch_to_window(page.driver.window_handles.first)
end
