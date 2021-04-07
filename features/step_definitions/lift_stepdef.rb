# frozen_string_literal: true

And(/^I enter (.+) for number of lift floors$/) do |value|
  service_requirements.lift_floor[0].data.set(value)
end

And(/^I enter (.+) for lift one$/) do |value|
  service_requirements.lift_floor[0].data.set(value)
  click_on 'Add another lift (98 remaining)'
end

And(/^I enter (.+) for lift two$/) do |value|
  service_requirements.lift_floor[1].data.set(value)
  click_on 'Add another lift (97 remaining)'
end

And(/^I enter (.+) for lift three$/) do |value|
  service_requirements.lift_floor[2].data.set(value)
  click_on 'Add another lift (96 remaining)'
end

And(/^I enter (.+) for lift four$/) do |value|
  service_requirements.lift_floor[3].data.set(value)
  click_on 'Add another lift (95 remaining)'
end

And(/^I enter (.+) for lift five$/) do |value|
  service_requirements.lift_floor[4].data.set(value)
end

And(/^I enter valid data for lift floor$/) do
  service_requirements.lift_floor[0].data.set(200)
  click_on 'Add another lift (98 remaining)'
  service_requirements.lift_floor[1].data.set(200)
  click_on 'Add another lift (97 remaining)'
  service_requirements.lift_floor[2].data.set(200)
  click_on 'Add another lift (96 remaining)'
  service_requirements.lift_floor[3].data.set(200)
  click_on 'Add another lift (95 remaining)'
  service_requirements.lift_floor[4].data.set(200)
  click_on 'Add another lift (94 remaining)'
  service_requirements.lift_floor[5].data.set(200)
  click_on 'Add another lift (93 remaining)'
  service_requirements.lift_floor[6].data.set(200)
  click_on 'Add another lift (92 remaining)'
  service_requirements.lift_floor[7].data.set(200)
  click_on 'Add another lift (91 remaining)'
  service_requirements.lift_floor[8].data.set(200)
  click_on 'Add another lift (90 remaining)'
  service_requirements.lift_floor[9].data.set(200)
  click_on 'Add another lift (89 remaining)'
  service_requirements.lift_floor[10].data.set(200)
  click_on 'Add another lift (88 remaining)'
  service_requirements.lift_floor[11].data.set(200)
  click_on 'Add another lift (87 remaining)'
  service_requirements.lift_floor[12].data.set(200)
  click_on 'Add another lift (86 remaining)'
  service_requirements.lift_floor[13].data.set(200)
  click_on 'Add another lift (85 remaining)'
  service_requirements.lift_floor[14].data.set(200)
  click_on 'Add another lift (84 remaining)'
  service_requirements.lift_floor[15].data.set(200)
  click_on 'Add another lift (83 remaining)'
  service_requirements.lift_floor[16].data.set(200)
  click_on 'Add another lift (82 remaining)'
  service_requirements.lift_floor[17].data.set(200)
  click_on 'Add another lift (81 remaining)'
  service_requirements.lift_floor[18].data.set(200)
  click_on 'Add another lift (80 remaining)'
  service_requirements.lift_floor[19].data.set(200)
  click_on 'Add another lift (79 remaining)'
  service_requirements.lift_floor[20].data.set(200)
  click_on 'Add another lift (78 remaining)'
  service_requirements.lift_floor[21].data.set(200)
  click_on 'Add another lift (77 remaining)'
  service_requirements.lift_floor[22].data.set(200)
  click_on 'Add another lift (76 remaining)'
  service_requirements.lift_floor[23].data.set(200)
  click_on 'Add another lift (75 remaining)'
  service_requirements.lift_floor[24].data.set(200)
  click_on 'Add another lift (74 remaining)'
  service_requirements.lift_floor[25].data.set(200)
  click_on 'Add another lift (73 remaining)'
  service_requirements.lift_floor[26].data.set(200)
  click_on 'Add another lift (72 remaining)'
  service_requirements.lift_floor[27].data.set(200)
  click_on 'Add another lift (71 remaining)'
  service_requirements.lift_floor[28].data.set(200)
  click_on 'Add another lift (70 remaining)'
  service_requirements.lift_floor[29].data.set(200)
  click_on 'Add another lift (69 remaining)'
  service_requirements.lift_floor[30].data.set(200)
  click_on 'Add another lift (68 remaining)'
  service_requirements.lift_floor[31].data.set(200)
  click_on 'Add another lift (67 remaining)'
  service_requirements.lift_floor[32].data.set(200)
  click_on 'Add another lift (66 remaining)'
  service_requirements.lift_floor[33].data.set(200)
  click_on 'Add another lift (65 remaining)'
  service_requirements.lift_floor[34].data.set(200)
  click_on 'Add another lift (64 remaining)'
  service_requirements.lift_floor[35].data.set(200)
  click_on 'Add another lift (63 remaining)'
  service_requirements.lift_floor[36].data.set(200)
  click_on 'Add another lift (62 remaining)'
  service_requirements.lift_floor[37].data.set(200)
  click_on 'Add another lift (61 remaining)'
  service_requirements.lift_floor[38].data.set(200)
  click_on 'Add another lift (60 remaining)'
  service_requirements.lift_floor[39].data.set(200)
  click_on 'Add another lift (59 remaining)'
  service_requirements.lift_floor[40].data.set(200)
  click_on 'Add another lift (58 remaining)'
  service_requirements.lift_floor[41].data.set(200)
  click_on 'Add another lift (57 remaining)'
  service_requirements.lift_floor[42].data.set(200)
  click_on 'Add another lift (56 remaining)'
  service_requirements.lift_floor[43].data.set(200)
  click_on 'Add another lift (55 remaining)'
  service_requirements.lift_floor[44].data.set(200)
  click_on 'Add another lift (54 remaining)'
  service_requirements.lift_floor[45].data.set(200)
  click_on 'Add another lift (53 remaining)'
  service_requirements.lift_floor[46].data.set(200)
  click_on 'Add another lift (52 remaining)'
  service_requirements.lift_floor[47].data.set(200)
  click_on 'Add another lift (51 remaining)'
  service_requirements.lift_floor[48].data.set(200)
  click_on 'Add another lift (50 remaining)'
  service_requirements.lift_floor[49].data.set(200)
  click_on 'Add another lift (49 remaining)'
  service_requirements.lift_floor[50].data.set(200)
  click_on 'Add another lift (48 remaining)'
  service_requirements.lift_floor[51].data.set(200)
  click_on 'Add another lift (47 remaining)'
  service_requirements.lift_floor[52].data.set(200)
  click_on 'Add another lift (46 remaining)'
  service_requirements.lift_floor[53].data.set(200)
  click_on 'Add another lift (45 remaining)'
  service_requirements.lift_floor[54].data.set(200)
  click_on 'Add another lift (44 remaining)'
  service_requirements.lift_floor[55].data.set(200)
  click_on 'Add another lift (43 remaining)'
  service_requirements.lift_floor[56].data.set(200)
  click_on 'Add another lift (42 remaining)'
  service_requirements.lift_floor[57].data.set(200)
  click_on 'Add another lift (41 remaining)'
  service_requirements.lift_floor[58].data.set(200)
  click_on 'Add another lift (40 remaining)'
  service_requirements.lift_floor[59].data.set(200)
  click_on 'Add another lift (39 remaining)'
  service_requirements.lift_floor[60].data.set(200)
  click_on 'Add another lift (38 remaining)'
  service_requirements.lift_floor[61].data.set(200)
  click_on 'Add another lift (37 remaining)'
  service_requirements.lift_floor[62].data.set(300)
  click_on 'Add another lift (36 remaining)'
  service_requirements.lift_floor[63].data.set(200)
  click_on 'Add another lift (35 remaining)'
  service_requirements.lift_floor[64].data.set(200)
  click_on 'Add another lift (34 remaining)'
  service_requirements.lift_floor[65].data.set(200)
  click_on 'Add another lift (33 remaining)'
  service_requirements.lift_floor[66].data.set(200)
  click_on 'Add another lift (32 remaining)'
  service_requirements.lift_floor[67].data.set(200)
  click_on 'Add another lift (31 remaining)'
  service_requirements.lift_floor[68].data.set(200)
  click_on 'Add another lift (30 remaining)'
  service_requirements.lift_floor[69].data.set(200)
  click_on 'Add another lift (29 remaining)'
  service_requirements.lift_floor[70].data.set(200)
  click_on 'Add another lift (28 remaining)'
  service_requirements.lift_floor[71].data.set(200)
  click_on 'Add another lift (27 remaining)'
  service_requirements.lift_floor[72].data.set(200)
  click_on 'Add another lift (26 remaining)'
  service_requirements.lift_floor[73].data.set(200)
  click_on 'Add another lift (25 remaining)'
  service_requirements.lift_floor[74].data.set(200)
  click_on 'Add another lift (24 remaining)'
  service_requirements.lift_floor[75].data.set(200)
  click_on 'Add another lift (23 remaining)'
  service_requirements.lift_floor[76].data.set(1)
  click_on 'Add another lift (22 remaining)'
  service_requirements.lift_floor[77].data.set(200)
  click_on 'Add another lift (21 remaining)'
  service_requirements.lift_floor[78].data.set(200)
  click_on 'Add another lift (20 remaining)'
  service_requirements.lift_floor[79].data.set(200)
  click_on 'Add another lift (19 remaining)'
  service_requirements.lift_floor[80].data.set(200)
  click_on 'Add another lift (18 remaining)'
  service_requirements.lift_floor[81].data.set(200)
  click_on 'Add another lift (17 remaining)'
  service_requirements.lift_floor[82].data.set(200)
  click_on 'Add another lift (16 remaining)'
  service_requirements.lift_floor[83].data.set(200)
  click_on 'Add another lift (15 remaining)'
  service_requirements.lift_floor[84].data.set(200)
  click_on 'Add another lift (14 remaining)'
  service_requirements.lift_floor[85].data.set(200)
  click_on 'Add another lift (13 remaining)'
  service_requirements.lift_floor[86].data.set(200)
  click_on 'Add another lift (12 remaining)'
  service_requirements.lift_floor[87].data.set(200)
  click_on 'Add another lift (11 remaining)'
  service_requirements.lift_floor[88].data.set(200)
  click_on 'Add another lift (10 remaining)'
  service_requirements.lift_floor[89].data.set(200)
  click_on 'Add another lift (9 remaining)'
  service_requirements.lift_floor[90].data.set(200)
  click_on 'Add another lift (8 remaining)'
  service_requirements.lift_floor[91].data.set(200)
  click_on 'Add another lift (7 remaining)'
  service_requirements.lift_floor[92].data.set(200)
  click_on 'Add another lift (6 remaining)'
  service_requirements.lift_floor[93].data.set(200)
  click_on 'Add another lift (5 remaining)'
  service_requirements.lift_floor[94].data.set(200)
  click_on 'Add another lift (4 remaining)'
  service_requirements.lift_floor[95].data.set(200)
  click_on 'Add another lift (3 remaining)'
  service_requirements.lift_floor[96].data.set(200)
  click_on 'Add another lift (2 remaining)'
  service_requirements.lift_floor[97].data.set(200)
  click_on 'Add another lift (1 remaining)'
  service_requirements.lift_floor[98].data.set(200)
  click_on 'Add another lift (0 remaining)'
end
