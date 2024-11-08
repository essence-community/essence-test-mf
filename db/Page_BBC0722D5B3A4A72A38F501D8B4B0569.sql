--liquibase formatted sql
--changeset patcher-core:Page_BBC0722D5B3A4A72A38F501D8B4B0569 dbms:postgresql runOnChange:true splitStatements:false stripComments:false
select pkg_patcher.p_remove_page('BBC0722D5B3A4A72A38F501D8B4B0569');
delete from s_mt.t_page_attr where ck_page='BBC0722D5B3A4A72A38F501D8B4B0569';
INSERT INTO s_mt.t_page (ck_id, ck_parent, cr_type, cv_name, cn_order, cl_static, cv_url, ck_icon, ck_user, ct_change, cl_menu, ck_view, cv_redirect_url, cl_multi) VALUES('BBC0722D5B3A4A72A38F501D8B4B0569', '0B35C08C18A54F29B491A52F92F58201', 2, '08ef74779b834a23a6da2b57e9952db0', 20, 0, null, null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-01T14:27:26.290+0300', 1, 'system', null, 1) on conflict (ck_id) do update set ck_parent = excluded.ck_parent, cr_type = excluded.cr_type, cv_name = excluded.cv_name, cn_order = excluded.cn_order, cl_static = excluded.cl_static, cv_url = excluded.cv_url, ck_icon = excluded.ck_icon, ck_user = excluded.ck_user, ct_change = excluded.ct_change, cl_menu = excluded.cl_menu, ck_view = excluded.ck_view, cl_multi = excluded.cl_multi, cv_redirect_url = excluded.cv_redirect_url;
INSERT INTO s_mt.t_page_attr(ck_id, ck_page, ck_attr, cv_value, ck_user, ct_change) VALUES ('EE1236E878F84915824EEC8295542582', 'BBC0722D5B3A4A72A38F501D8B4B0569', 'activerules', '515 in g_sess_ca_actions', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-01T15:11:15.826+0300')  on conflict (ck_id) do update set ck_page = excluded.ck_page, ck_attr = excluded.ck_attr, cv_value = excluded.cv_value, ck_user = excluded.ck_user, ct_change = excluded.ct_change;select pkg_patcher.p_merge_page_action('B08478FAEA074F0A849233FD9FB0B588', 'BBC0722D5B3A4A72A38F501D8B4B0569', 'edit', 516, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2021-02-10T19:47:41.507+0300');
select pkg_patcher.p_merge_page_action('AADBC5A85445439785F279600B4AA79B', 'BBC0722D5B3A4A72A38F501D8B4B0569', 'view', 515, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-01T14:27:26.290+0300');
INSERT INTO s_mt.t_page_variable (ck_id, ck_page, cv_name, cv_description, cv_value, ck_user, ct_change) VALUES('9193DC3B21DC45F0A3B1E0E4CED2E5BB', 'BBC0722D5B3A4A72A38F501D8B4B0569', 'g_name', 'tere', null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2021-11-18T17:41:08.400+0300') on conflict (ck_id) do update set ck_page = excluded.ck_page, cv_name = excluded.cv_name, cv_description = excluded.cv_description, cv_value = excluded.cv_value, ck_user = excluded.ck_user, ct_change = excluded.ct_change;
INSERT INTO s_mt.t_page_variable (ck_id, ck_page, cv_name, cv_description, cv_value, ck_user, ct_change) VALUES('6697D8D1D8D344159C8774A1731EA35B', 'BBC0722D5B3A4A72A38F501D8B4B0569', 'g_test', 'tst', null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-26T12:24:46.480+0300') on conflict (ck_id) do update set ck_page = excluded.ck_page, cv_name = excluded.cv_name, cv_description = excluded.cv_description, cv_value = excluded.cv_value, ck_user = excluded.ck_user, ct_change = excluded.ct_change;
select pkg_patcher.p_merge_object('4FB7BE40B2F841CB80516D1CCC8B50BB', '137', null, 'Test Panel MF', 9, null, 'Test Panel', null, null, null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-01T14:27:03.806+0300');
select pkg_patcher.p_merge_object('46F97D8CAB84450B8EE0ACD2C61E7CD2', '5833D73B31E04F8ABE9D307DBCE845A9', '4FB7BE40B2F841CB80516D1CCC8B50BB', 'test h', 5, null, 'test h', null, null, null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-26T12:23:54.435+0300');
select pkg_patcher.p_merge_object('6C819A0384234C1BB386AFFC22A5C297', '26', '4FB7BE40B2F841CB80516D1CCC8B50BB', 'Test Field', 8, null, 'Test Field', '5ef5ee812fd44f41a476121d1255fda5', null, null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:24:55.772+0300');
select pkg_patcher.p_merge_object('34248E9179EE4712ABE5ECAC18B62B44', '8672B08AF8C044BC963186193AA923F5', '4FB7BE40B2F841CB80516D1CCC8B50BB', 'TEST MF', 9, null, 'TEST MF', null, null, null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:24:40.199+0300');
select pkg_patcher.p_merge_object_attr('E03B3FE8CC274EC19DD3092FBCFC4814', '34248E9179EE4712ABE5ECAC18B62B44', 'DD629043C6C84441B221B0D851373863', '{"className": "default", "remoteName": "app2", "remoteEntry": "http://localhost:8082/remoteEntry.js", "builderField9": "App", "exposedModule": "./App", "builderField10": [], "remoteCssEntry": []}', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-01T15:18:18.220+0300', 'mfconfig');
select pkg_patcher.p_merge_object_attr('7CDD4F2114BB40899F7354F6B19BD03C', '34248E9179EE4712ABE5ECAC18B62B44', 'EDA6C489CCD44B6AAD1C8F32EA406489', '{"test":"test"}', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-10-26T12:59:34.175+0300', 'mfcomponentconfig');
INSERT INTO s_mt.t_page_object (ck_id, ck_page, ck_object, cn_order, ck_parent, ck_master, ck_user, ct_change) VALUES ('6E572C72DE0143C3B87D8DD252E447BB', 'BBC0722D5B3A4A72A38F501D8B4B0569', '4FB7BE40B2F841CB80516D1CCC8B50BB', 5, null, null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:14:53.783+0300')  on conflict (ck_id) do update set ck_page = excluded.ck_page, ck_object = excluded.ck_object, cn_order = excluded.cn_order, ck_parent = excluded.ck_parent, ck_master = excluded.ck_master, ck_user = excluded.ck_user, ct_change = excluded.ct_change;
INSERT INTO s_mt.t_page_object (ck_id, ck_page, ck_object, cn_order, ck_parent, ck_master, ck_user, ct_change) VALUES ('DDA32BB6B7264D91914839F48637DDF7', 'BBC0722D5B3A4A72A38F501D8B4B0569', '46F97D8CAB84450B8EE0ACD2C61E7CD2', 5, '6E572C72DE0143C3B87D8DD252E447BB', null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:14:53.783+0300')  on conflict (ck_id) do update set ck_page = excluded.ck_page, ck_object = excluded.ck_object, cn_order = excluded.cn_order, ck_parent = excluded.ck_parent, ck_master = excluded.ck_master, ck_user = excluded.ck_user, ct_change = excluded.ct_change;
INSERT INTO s_mt.t_page_object (ck_id, ck_page, ck_object, cn_order, ck_parent, ck_master, ck_user, ct_change) VALUES ('6918086F871845BC8D37C394DDAC8708', 'BBC0722D5B3A4A72A38F501D8B4B0569', '6C819A0384234C1BB386AFFC22A5C297', 8, '6E572C72DE0143C3B87D8DD252E447BB', null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:14:53.783+0300')  on conflict (ck_id) do update set ck_page = excluded.ck_page, ck_object = excluded.ck_object, cn_order = excluded.cn_order, ck_parent = excluded.ck_parent, ck_master = excluded.ck_master, ck_user = excluded.ck_user, ct_change = excluded.ct_change;
INSERT INTO s_mt.t_page_object (ck_id, ck_page, ck_object, cn_order, ck_parent, ck_master, ck_user, ct_change) VALUES ('C4BFCD9C3437461A9879F7ABC275B2C4', 'BBC0722D5B3A4A72A38F501D8B4B0569', '34248E9179EE4712ABE5ECAC18B62B44', 9, '6E572C72DE0143C3B87D8DD252E447BB', null, '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:14:53.783+0300')  on conflict (ck_id) do update set ck_page = excluded.ck_page, ck_object = excluded.ck_object, cn_order = excluded.cn_order, ck_parent = excluded.ck_parent, ck_master = excluded.ck_master, ck_user = excluded.ck_user, ct_change = excluded.ct_change;
select pkg_patcher.p_merge_page_object_attr('F0AF5AA832904B06B333B28F67A76AA2', '6E572C72DE0143C3B87D8DD252E447BB', '609', 'vbox-wrap', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:26:53.700+0300', 'contentview');
select pkg_patcher.p_merge_page_object_attr('D5D341EAE0D84CC29299CBBB201A3280', 'DDA32BB6B7264D91914839F48637DDF7', '9B7043ED962543EAA2501CEFA0082C12', '[{"test":1},{"test":2}]', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-26T12:32:12.962+0300', 'recordsrule');
select pkg_patcher.p_merge_page_object_attr('FEECC783DF8D4DA5A99E0477CAEA9D0C', 'DDA32BB6B7264D91914839F48637DDF7', 'FD62910602FF40EE811EFE071DE651E7', 'g_test', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-26T12:25:05.180+0300', 'saverecordstoglobal');
select pkg_patcher.p_merge_page_object_attr('9717B39DCF24499CB0A91B76290EF281', '6918086F871845BC8D37C394DDAC8708', '1190', '[{"in": "", "out": "g_name"}]', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2022-09-30T14:15:18.406+0300', 'setglobal');
select pkg_patcher.p_merge_page_object_attr('5BEF905F45F843909FCE327F9B3FDB79', 'C4BFCD9C3437461A9879F7ABC275B2C4', '2C606494ADB64FC683001A0CF952AD88', '{test:g_name,test2:g_sys_anonymous_action}', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-01T15:23:53.539+0300', 'mfcomponentconfigrule');
select pkg_patcher.p_merge_page_object_attr('62D481FE456840ECAC9BACC58C8E56A8', 'C4BFCD9C3437461A9879F7ABC275B2C4', 'D5C6D30931DC4D15AFE6D5F6DC9144DF', '[{"handle": "errorAction", "errorrule": "{\"jt_message\":{\"info\":[{\"title\":\"title\", \"text\":jv_message_type,\"description\":\"des\"}]}}", "messageType": "test"}, {"handle": "setGlobalAction", "setGlobal": [{"in": "ck_id", "out": "g_mg_ck_id"}], "messageType": "test"}]', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2024-11-08T14:41:55.591+0300', 'mfeventconfig');
select pkg_patcher.p_merge_page_object_attr('489B186EE8D8434BA5BAAEF7E26B99BB', 'C4BFCD9C3437461A9879F7ABC275B2C4', 'FFEAC8168586462CA88D1B12DC418141', 'g_name==2', '4fd05ca9-3a9e-4d66-82df-886dfa082113', '2023-03-26T12:07:14.885+0300', 'hiddenrules');
INSERT INTO s_mt.t_localization (ck_id, ck_d_lang, cr_namespace, cv_value, ck_user, ct_change)
select t.ck_id, t.ck_d_lang, t.cr_namespace, t.cv_value, t.ck_user, t.ct_change::timestamp from (
    select '08ef74779b834a23a6da2b57e9952db0' as ck_id, 'ru_RU' as ck_d_lang, 'meta' as cr_namespace, 'test' as cv_value, '4fd05ca9-3a9e-4d66-82df-886dfa082113' as ck_user, '2021-02-10T19:47:41.507+0300' as ct_change
    union all
    select '5ef5ee812fd44f41a476121d1255fda5' as ck_id, 'ru_RU' as ck_d_lang, 'meta' as cr_namespace, 'Test Field' as cv_value, '4fd05ca9-3a9e-4d66-82df-886dfa082113' as ck_user, '2022-09-30T10:32:59.402+0300' as ct_change
) as t 
 join s_mt.t_d_lang dl
 on t.ck_d_lang = dl.ck_id
on conflict on constraint cin_u_localization_1 do update set ck_id = excluded.ck_id, ck_d_lang = excluded.ck_d_lang, cr_namespace = excluded.cr_namespace, cv_value = excluded.cv_value, ck_user = excluded.ck_user, ct_change = excluded.ct_change;