prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.4'
,p_default_workspace_id=>64108845119580161057
,p_default_application_id=>122865
,p_default_id_offset=>64110281232584713780
,p_default_owner=>'WKSP_ADVANCEPOST'
);
end;
/
 
prompt APPLICATION 122865 - Customisations Catalogue
--
-- Application Export:
--   Application:     122865
--   Name:            Customisations Catalogue
--   Date and Time:   13:59 Sunday March 19, 2023
--   Exported By:     DALEPOULTER@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     13
--       Items:                   67
--       Validations:              1
--       Processes:               16
--       Regions:                 21
--       Buttons:                 27
--     Shared Components:
--       Logic:
--         Items:                  1
--       Navigation:
--         Tab Sets:               1
--           Tabs:                 1
--         Lists:                  1
--         Breadcrumbs:            1
--           Entries:              7
--         NavBar Entries:         1
--       Security:
--         Authentication:         3
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                15
--           Region:              22
--           Label:                5
--           List:                17
--           Popup LOV:            1
--           Calendar:             3
--           Breadcrumb:           2
--           Button:               4
--           Report:               7
--         LOVs:                   3
--         Shortcuts:              2
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Excluded
--   Version:         22.2.4
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_ADVANCEPOST')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Customisations Catalogue')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F101')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt_last_reset=>'20230319135409'
,p_bookmark_checksum_function=>'MD5'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>28800
,p_html_escaping_mode=>'B'
,p_flow_language=>'en-us'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(64190418858361042876)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'P'
,p_tokenize_row_search=>'N'
,p_friendly_url=>'N'
,p_last_updated_by=>'DALEPOULTER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230319135409'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(122865)
,p_theme_id=>20
,p_home_url=>'f?p=&APP_ID.:9:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/main
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(64193174757192645052)
,p_name=>'Main'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64193175064810647261)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customisation List'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64193175542085650222)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Customisation Objects'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64194430034729487633)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Concurrent Programs'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110281329596713901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110281466989713901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110281580828713901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_JET'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110281601990713901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110281723952713901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110281854879713901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110281940018713901)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110282009722713901)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110282121875713901)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64110282267195713902)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_imp_shared.create_icon_bar_item(
 p_id=>wwv_flow_imp.id(64190422039974042947)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'CURRENT_LOOK_IS_1'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_items/fsp_after_login_url
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(64190443433194047535)
,p_name=>'FSP_AFTER_LOGIN_URL'
,p_escape_on_http_output=>'N'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_imp_shared.create_tab(
 p_id=>wwv_flow_imp.id(64190422847701042970)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_CUSTOMISATION_OBJECTS'
,p_tab_text=>'Customisation Objects'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'2,4,3'
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/customisation_list
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(64194219346386323912)
,p_lov_name=>'CUSTOMISATION LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customisation_number||'' - ''||name d, cust_list_id r',
'from   xx_cust_list',
'order by r'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/object_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(64191873137116353523)
,p_lov_name=>'OBJECT TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(64191873137116353523)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64191873434350353582)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Package Body'
,p_lov_return_value=>'PACKAGE BODY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64191873643765353585)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Package Header'
,p_lov_return_value=>'PACKAGE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64195048934457828372)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Table'
,p_lov_return_value=>'TABLE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64195051554327843613)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Synonym'
,p_lov_return_value=>'SYNONYM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64206317847546716640)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Sql Loader'
,p_lov_return_value=>'SQLLDR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64206490454253878255)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Procedure'
,p_lov_return_value=>'PROCEDURE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64206660755738894424)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Host'
,p_lov_return_value=>'HOST'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64207126434029522596)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Workflow'
,p_lov_return_value=>'WORKFLOW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64207346851583612072)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Form'
,p_lov_return_value=>'FORM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64193041541712006439)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'View'
,p_lov_return_value=>'VIEW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64197348049173700915)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Report'
,p_lov_return_value=>'REPORT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64198060938118710109)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Form Library'
,p_lov_return_value=>'LIBRARY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64199427937326881394)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Type'
,p_lov_return_value=>'TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64200567355801165383)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Function'
,p_lov_return_value=>'FUNCTION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64201693546847385867)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Trigger'
,p_lov_return_value=>'TRIGGER'
);
end;
/
prompt --application/shared_components/user_interface/lovs/yes_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(64193841148004447513)
,p_lov_name=>'YES_NO'
,p_lov_query=>'.'||wwv_flow_imp.id(64193841148004447513)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64193841450626447535)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64193841644288447537)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/xx_cust_objects_breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(64190419738823042880)
,p_name=>'XX_CUST_OBJECTS Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64190441148202043223)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64207343841225554141)
,p_parent_id=>wwv_flow_imp.id(64190441148202043223)
,p_short_name=>'All Customisation Objects'
,p_link=>'f?p=&FLOW_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64207563754403761412)
,p_parent_id=>wwv_flow_imp.id(64190441148202043223)
,p_short_name=>'Customisation Listing'
,p_link=>'f?p=&FLOW_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64219593239376879183)
,p_parent_id=>wwv_flow_imp.id(64207563754403761412)
,p_short_name=>'Concurrent Programs'
,p_link=>'f?p=&FLOW_ID.:8:&SESSION.'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64190441259643043223)
,p_parent_id=>wwv_flow_imp.id(64207343841225554141)
,p_option_sequence=>20
,p_short_name=>'Insert Customisation Object'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64190441357572043223)
,p_parent_id=>wwv_flow_imp.id(64207343841225554141)
,p_option_sequence=>30
,p_short_name=>'Update Customisation Object'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64190441443508043223)
,p_parent_id=>wwv_flow_imp.id(64190441148202043223)
,p_option_sequence=>40
,p_short_name=>'Success'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190396552376042786)
,p_theme_id=>20
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody" height="70%" align="center" width="400">',
'<td width="100%" valign="top" height="100%" id="t20ContentBody" align="center">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110284955817714168)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110285378629714169)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110285884677714169)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110286371833714169)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110286841012714169)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110287319672714170)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110287804690714170)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110288332879714170)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110288823980714170)
,p_page_template_id=>wwv_flow_imp.id(64190396552376042786)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190396846798042797)
,p_theme_id=>20
,p_name=>'No Tabs'
,p_internal_name=>'NO_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" height="100%" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" align="left"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110289311915714171)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110289881146714171)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110290394218714171)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110290844631714171)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110291374517714171)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110291872937714172)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110292343485714172)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110292822321714172)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110293363860714172)
,p_page_template_id=>wwv_flow_imp.id(64190396846798042797)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_with_sidebar
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190397144039042797)
,p_theme_id=>20
,p_name=>'No Tabs with Sidebar'
,p_internal_name=>'NO_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" height="100%" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" align="left"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110293813336714172)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110294385313714173)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110294891209714173)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110295359862714173)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110295888677714174)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110296323600714174)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110296867835714174)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110297301352714174)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110297854952714175)
,p_page_template_id=>wwv_flow_imp.id(64190397144039042797)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190397457071042798)
,p_theme_id=>20
,p_name=>'One Level Tabs'
,p_internal_name=>'ONE_LEVEL_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110302893092714177)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110303379773714177)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110303886324714178)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110304327586714178)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110304840928714178)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110305337719714178)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110305899255714178)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110306380874714179)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110306840179714179)
,p_page_template_id=>wwv_flow_imp.id(64190397457071042798)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_custom_1
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190397747241042798)
,p_theme_id=>20
,p_name=>'One Level Tabs (Custom 1)'
,p_internal_name=>'ONE_LEVEL_TABS_CUSTOM_1'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110298342159714175)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110298896087714175)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110299355708714175)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110299852664714176)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110300367260714176)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110300846725714176)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110301394472714176)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110301895851714176)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110302389287714177)
,p_page_template_id=>wwv_flow_imp.id(64190397747241042798)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_custom_5
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190398065219042800)
,p_theme_id=>20
,p_name=>'One Level Tabs (Custom 5)'
,p_internal_name=>'ONE_LEVEL_TABS_CUSTOM_5'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br /></td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>',
'</div>',
'#REGION_POSITION_08#',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>12
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110307397238714179)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110307865473714179)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110308340938714180)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110308823315714180)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110309321237714180)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110309816589714180)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110310382814714180)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110310846445714181)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110311303691714181)
,p_page_template_id=>wwv_flow_imp.id(64190398065219042800)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_sidebar
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190398337282042800)
,p_theme_id=>20
,p_name=>'One Level Tabs Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
''))
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110316305279714183)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110316861204714183)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110317349480714183)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110317891337714184)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110318319110714184)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110318800482714184)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110319305365714184)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110319886187714184)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110320311232714185)
,p_page_template_id=>wwv_flow_imp.id(64190398337282042800)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_sidebar_custom_2
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190398659799042800)
,p_theme_id=>20
,p_name=>'One Level Tabs Sidebar  (Custom 2)'
,p_internal_name=>'ONE_LEVEL_TABS_SIDEBAR_CUSTOM_2'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110311859486714181)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110312391675714181)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110312848743714181)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110313386619714182)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110313891807714182)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110314309597714182)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110314873887714182)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110315327104714183)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110315891928714183)
,p_page_template_id=>wwv_flow_imp.id(64190398659799042800)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_sidebar_custom_6
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190398939017042801)
,p_theme_id=>20
,p_name=>'One Level Tabs Sidebar (Custom 6)'
,p_internal_name=>'ONE_LEVEL_TABS_SIDEBAR_CUSTOM_6'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br /></td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>',
'</div>',
'#REGION_POSITION_08#',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
''))
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>13
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110320855910714185)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110321387300714185)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110321810773714185)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110322331160714186)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110322822730714186)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110323399204714186)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110323852391714186)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110324390362714186)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110324824495714187)
,p_page_template_id=>wwv_flow_imp.id(64190398939017042801)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190399258597042801)
,p_theme_id=>20
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td valign="top">#LOGO##REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#REGION_POSITION_08#</td>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top">',
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'#REGION_POSITION_05#',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'<div class="t20NavigationBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110333844125714191)
,p_page_template_id=>wwv_flow_imp.id(64190399258597042801)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110334364300714191)
,p_page_template_id=>wwv_flow_imp.id(64190399258597042801)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110334816130714191)
,p_page_template_id=>wwv_flow_imp.id(64190399258597042801)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110335323469714191)
,p_page_template_id=>wwv_flow_imp.id(64190399258597042801)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110335823697714192)
,p_page_template_id=>wwv_flow_imp.id(64190399258597042801)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110336399862714192)
,p_page_template_id=>wwv_flow_imp.id(64190399258597042801)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110336843722714192)
,p_page_template_id=>wwv_flow_imp.id(64190399258597042801)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/printer_friendly
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190399561667042802)
,p_theme_id=>20
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td width="100%" valign="top"><div class="t20messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'<div class="t20NavigationBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_template_comment=>'3'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110329858429714189)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110330380322714189)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110330898327714189)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110331317285714190)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110331855253714190)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110332345754714190)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110332819587714190)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110333313026714190)
,p_page_template_id=>wwv_flow_imp.id(64190399561667042802)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190399850178042802)
,p_theme_id=>20
,p_name=>'Two Level Tabs'
,p_internal_name=>'TWO_LEVEL_TABS'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>',
'</div>',
'<div id="t20tablist">#TAB_CELLS#</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_top_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_top_non_curr_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110325348494714187)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110325845010714187)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110326308237714187)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110326853248714188)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110327330854714188)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110327833710714188)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110328332570714188)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110328826879714189)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110329355111714189)
,p_page_template_id=>wwv_flow_imp.id(64190399850178042802)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_custom_3
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190400144214042803)
,p_theme_id=>20
,p_name=>'Two Level Tabs  (Custom 3)'
,p_internal_name=>'TWO_LEVEL_TABS_CUSTOM_3'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20ChildTabs">#TAB_CELLS#</div>',
'<div style="background-color:none;">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_02##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>'
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>10
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110337329201714192)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110337804416714192)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110338369944714193)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110338857508714193)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110339318684714193)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110339824793714193)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110340355654714193)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110340800238714194)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110341373082714194)
,p_page_template_id=>wwv_flow_imp.id(64190400144214042803)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190400445353042803)
,p_theme_id=>20
,p_name=>'Two Level Tabs with Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>',
'</div>',
'<div id="t20tablist">#TAB_CELLS#</div>',
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td width="100%" valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>',
''))
,p_non_current_tab=>'<a href="#TAB_LINK#">#TAB_LABEL#</a>'
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
''))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#TAB_LINK#">#TAB_LABEL#</a>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110341818572714194)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110342366161714194)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110342864983714195)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110343364794714195)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110343895258714195)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110344301130714195)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110344814397714195)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110345307200714196)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110345892607714196)
,p_page_template_id=>wwv_flow_imp.id(64190400445353042803)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar_custom_4
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64190400737735042804)
,p_theme_id=>20
,p_name=>'Two Level Tabs with Sidebar  (Custom 4)'
,p_internal_name=>'TWO_LEVEL_TABS_WITH_SIDEBAR_CUSTOM_4'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />',
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="t20PageHeader">',
'<table border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>',
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>',
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>',
'</div>',
'<div id="t20ChildTabs">#TAB_CELLS#</div>',
'<div style="background-color:none;">#REGION_POSITION_01#</div>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">',
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>',
'<td valign="top" id="t20ContentBody">',
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<div id="t20ContentMiddle">#BODY##REGION_POSITION_04#</div>',
'</td>',
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">',
'<tr>',
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>',
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>',
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>',
'</tr>',
'</table>',
'<br class="t20Break"/>',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_current_tab=>'<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'
,p_non_current_tab=>'<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>'
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>',
'<td class="tM"></td>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>',
'</tr>',
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>',
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>',
'</table>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t20NavBar">#TEXT#</a> |'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="5" align="left"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>11
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110346368406714196)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110346850421714196)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110347314370714197)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110347882441714197)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110348315281714197)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110348854588714197)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110349380078714198)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 6'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110349816732714198)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110350325503714198)
,p_page_template_id=>wwv_flow_imp.id(64190400737735042804)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64190401050076042804)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>'<a href="#LINK#" class="t20Button">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>'Standard Button'
,p_theme_id=>20
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_1
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64190401258026042808)
,p_template_name=>'Button, Alternative 1'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1'
,p_template=>'<a href="#LINK#" class="t20Button2">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>20
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_2
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64190401444436042809)
,p_template_name=>'Button, Alternative 2'
,p_internal_name=>'BUTTON,_ALTERNATIVE_2'
,p_template=>'<a href="#LINK#" class="t20Button">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>20
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_3
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64190401654639042809)
,p_template_name=>'Button, Alternative 3'
,p_internal_name=>'BUTTON,_ALTERNATIVE_3'
,p_template=>'<a href="#LINK#" class="t20Button">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>20
);
end;
/
prompt --application/shared_components/user_interface/templates/region/borderless_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190401856874042809)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20Borderless" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>7
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110633714416714238)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110634238058714238)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110634712968714238)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110635272320714239)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110635781245714239)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110636230729714239)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110636754606714239)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110637299878714240)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110637745199714240)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110638240899714240)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110638708611714240)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110639232069714240)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110639767644714241)
,p_plug_template_id=>wwv_flow_imp.id(64190401856874042809)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/bracketed_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190402153925042820)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20Bracketed" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>18
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110613393193714228)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110613892108714228)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110614355062714229)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110614820217714229)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110615351359714229)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110615827013714229)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110616340720714230)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110616887105714230)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110617251377714230)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110617769244714230)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110618208264714230)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110618731586714231)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110619286516714231)
,p_plug_template_id=>wwv_flow_imp.id(64190402153925042820)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/breadcrumb_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190402347765042820)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t20Breadcrumbs" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>20
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110619733397714231)
,p_plug_template_id=>wwv_flow_imp.id(64190402347765042820)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110620212299714232)
,p_plug_template_id=>wwv_flow_imp.id(64190402347765042820)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_with_title
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190402658611042820)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ButtonRegionwithTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'</tbody>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>20
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110620731855714232)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110621231330714232)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110621766269714232)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110622207305714233)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110622743603714233)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110623232001714233)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110623716328714233)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110624298374714233)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110624776833714234)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110625291704714234)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110625713835714234)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110626261955714234)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110626792761714235)
,p_plug_template_id=>wwv_flow_imp.id(64190402658611042820)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_without_title
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190402957151042820)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'</tbody>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110627282726714235)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110627739369714235)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110628285972714235)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110628760053714236)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110629297154714236)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110629736636714236)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110630211371714236)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110630791431714237)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110631267087714237)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110631712910714237)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110632272549714237)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110632788744714237)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110633263392714238)
,p_plug_template_id=>wwv_flow_imp.id(64190402957151042820)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/chart_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190403239640042821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ChartRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110640282627714241)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110640729785714241)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110641295015714241)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110641727993714242)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110642298422714242)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110642782994714242)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110643236715714242)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110643759409714243)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110644287398714243)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110644729984714243)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110645289111714243)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110645708784714243)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110646243422714244)
,p_plug_template_id=>wwv_flow_imp.id(64190403239640042821)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/form_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190403564675042821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20FormRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110350840340714199)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110351320031714199)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110351846086714199)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110352337963714200)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110352851010714200)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110353328705714200)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110353859437714200)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110354313955714201)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110354822741714201)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110355385765714201)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110355847645714201)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110356385285714202)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110356878641714202)
,p_plug_template_id=>wwv_flow_imp.id(64190403564675042821)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190403847851042822)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20HideShow" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header"><img src="#IMAGE_PREFIX#themes/theme_20/collapse_plus.gif" onclick="htmldb_ToggleWithImage(this,''#REGION_STATIC_ID#_body'')" class="pb" alt="" />#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body" style="display:none;">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>1
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110357323763714202)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110357893012714202)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110358394449714202)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110358858508714203)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110359353459714203)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110359826900714203)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110360370307714203)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110360870368714203)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110361363660714204)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110361836498714204)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110362389733714204)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110362888626714204)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110363384027714205)
,p_plug_template_id=>wwv_flow_imp.id(64190403847851042822)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/list_region_with_icon_chart
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190404144284042823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ListRegionwithIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'List Region with Icon (Chart)'
,p_internal_name=>'LIST_REGION_WITH_ICON_CHART'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110363843947714205)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110364377974714205)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110364855955714205)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110365370634714205)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110365817857714206)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110366363143714206)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110366898956714206)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110367357191714206)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110367885552714206)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110368324490714207)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110368888799714207)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110369322034714207)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110369872377714207)
,p_plug_template_id=>wwv_flow_imp.id(64190404144284042823)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190404457908042823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t20Region t20NavRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div>',
'<div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>20
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110370347266714208)
,p_plug_template_id=>wwv_flow_imp.id(64190404457908042823)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110370801700714208)
,p_plug_template_id=>wwv_flow_imp.id(64190404457908042823)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region_alternative_1
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190404757114042823)
,p_layout=>'TABLE'
,p_template=>'<div class="t20Region t20NavRegionAlt" id="#REGION_STATIC_ID#"#REGION_ATTRIBUTES#><div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div><div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div></div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>20
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110371379773714208)
,p_plug_template_id=>wwv_flow_imp.id(64190404757114042823)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110371842127714208)
,p_plug_template_id=>wwv_flow_imp.id(64190404757114042823)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_buttons_and_title
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190405047833042823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20RegionwithoutButtonsandTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Region without Buttons and Title'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLE'
,p_theme_id=>20
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110372330491714209)
,p_plug_template_id=>wwv_flow_imp.id(64190405047833042823)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110372889170714209)
,p_plug_template_id=>wwv_flow_imp.id(64190405047833042823)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_title
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190405363499042823)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20RegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>20
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110373305217714209)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110373887489714209)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110374380212714209)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110374848796714210)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110375339222714210)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110375800076714210)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110376314364714210)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110376876831714211)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110377358400714211)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110377864223714211)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110378337435714211)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110378809738714212)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110379374131714212)
,p_plug_template_id=>wwv_flow_imp.id(64190405363499042823)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/report_filter_single_row
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190405636754042824)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_internal_name=>'REPORT_FILTER_SINGLE_ROW'
,p_theme_id=>20
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110379830096714212)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110380330255714212)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110380831435714213)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110381312998714213)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110381840107714213)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110382334618714213)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110382869482714214)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110383360804714214)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110383803841714214)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110384342995714214)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110384811148714215)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110385302542714215)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110385883142714215)
,p_plug_template_id=>wwv_flow_imp.id(64190405636754042824)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/report_list
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190405959475042824)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportList" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report List'
,p_internal_name=>'REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110386304280714215)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110386846227714215)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110387364060714216)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110387809199714216)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110388355996714216)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110388801284714216)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110389377340714217)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110389862136714217)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110390358024714217)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110390893634714217)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110391355353714217)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110391843411714218)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110392300685714218)
,p_plug_template_id=>wwv_flow_imp.id(64190405959475042824)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190406242138042824)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110392874000714218)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110393318051714218)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110393873072714219)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110394333696714219)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110394818714714219)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110395324266714219)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110395860684714219)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110396300982714220)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110396874826714220)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110397368541714220)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110397846680714220)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110398383072714221)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110398839126714221)
,p_plug_template_id=>wwv_flow_imp.id(64190406242138042824)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_100_width
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190406562174042824)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportsRegion100" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110399323258714221)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110399813881714221)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110600392664714222)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110600856378714222)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110601397113714222)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110601890670714223)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110602306883714223)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110602837267714223)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110603321343714223)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110603818791714223)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110604391991714224)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110604824895714224)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110605310447714224)
,p_plug_template_id=>wwv_flow_imp.id(64190406562174042824)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_alternative_1
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190406833059042824)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20ReportsRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_internal_name=>'REPORTS_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>20
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110605833464714225)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110606310648714225)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110606881249714225)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110607362166714225)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110607890773714225)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110608393977714226)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110608857398714226)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110609349617714226)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110609855074714226)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110610350230714227)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110610870332714227)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110611308495714227)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110611822256714228)
,p_plug_template_id=>wwv_flow_imp.id(64190406833059042824)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190407139683042825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20SidebarRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110612339764714228)
,p_plug_template_id=>wwv_flow_imp.id(64190407139683042825)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110612800852714228)
,p_plug_template_id=>wwv_flow_imp.id(64190407139683042825)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190407450287042825)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20SidebarRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>20
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110653220252714248)
,p_plug_template_id=>wwv_flow_imp.id(64190407450287042825)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110653780456714248)
,p_plug_template_id=>wwv_flow_imp.id(64190407450287042825)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190407760453042826)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20WizardRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>20
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110654239606714248)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110654791520714248)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110655211136714249)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110655713455714249)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110656294462714249)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110656767137714249)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110657253737714250)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110657759571714250)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110658298587714250)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110658713917714250)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110659287187714251)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110659785363714251)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110660213338714251)
,p_plug_template_id=>wwv_flow_imp.id(64190407760453042826)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region_with_icon
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64190408053275042826)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t20Region t20WizardRegionIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>',
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>',
'<tbody id="#REGION_STATIC_ID#_body">',
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr><td class="t20RegionBody">#BODY#</td></tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>20
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110646737236714244)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110647255613714244)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110647757776714244)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110648260545714245)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110648762420714245)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110649243363714246)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110649729014714246)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110650255075714246)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110650789499714246)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110651239696714247)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110651730865714247)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110652202505714247)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64110652792544714247)
,p_plug_template_id=>wwv_flow_imp.id(64190408053275042826)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/button_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190408357558042826)
,p_list_template_current=>'<a href="#LINK#" class="t20Button t20current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" class="t20Button">#TEXT#</a>'
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>20
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="t20ButtonList">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/hierarchical_expanded
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190408636167042830)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanded'
,p_internal_name=>'HIERARCHICAL_EXPANDED'
,p_theme_id=>20
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="htmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/hierarchical_expanding
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190408959534042831)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_internal_name=>'HIERARCHICAL_EXPANDING'
,p_theme_id=>20
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190409260569042831)
,p_list_template_current=>'<td class="t20current"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/><br />#TEXT#</td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>20
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table class="t20HorizontalImageswithLabelList" cellpadding="0" border="0" cellspacing="0" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190409547692042832)
,p_list_template_current=>'<a href="#LINK#" class="t20current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>20
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="t20HorizontalLinksList">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190409835151042832)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_internal_name=>'PULL_DOWN_MENU'
,p_theme_id=>20
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190410138849042832)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>20
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image_custom_1
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190410440410042833)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image (Custom 1)'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE_CUSTOM_1'
,p_theme_id=>20
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tab_list_custom_3
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190410745011042835)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Tab List (Custom 3)'
,p_internal_name=>'TAB_LIST_CUSTOM_3'
,p_theme_id=>20
,p_theme_class_id=>11
,p_list_template_before_rows=>'<div id="t20tablist">'
,p_list_template_after_rows=>'</div>'
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This list matches the child tabs on the Two Level Tab templates.',
'Use in region position 8 of One Level Tabs (Custom 5) and/or One Level Tabs Sidebar (Custom 6).'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190411052412042835)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>',
'<td class="t20CurrentTab"><a href="#LINK#">#TEXT#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>',
'<td class="t20Tab"><a href="#LINK#">#TEXT#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>',
'<td>&nbsp;</td>'))
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>20
,p_theme_class_id=>7
,p_list_template_before_rows=>'<table class="t20Tabs t20TabbedNavigationList" border="0" cellpadding="0" cellspacing="0" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_images_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190411349306042835)
,p_list_template_current=>'<tr><td class="t20current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>'
,p_list_template_noncurrent=>'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Images List'
,p_internal_name=>'VERTICAL_IMAGES_LIST'
,p_theme_id=>20
,p_theme_class_id=>5
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20VerticalImagesList">'
,p_list_template_after_rows=>'</table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_images_list_custom_2
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190411645727042836)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_name=>'Vertical Images List (Custom 2)'
,p_internal_name=>'VERTICAL_IMAGES_LIST_CUSTOM_2'
,p_theme_id=>20
,p_theme_class_id=>10
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
''))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190411949190042836)
,p_list_template_current=>'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>20
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="t20VerticalOrderedList">'
,p_list_template_after_rows=>'</ol>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190412255000042836)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>20
,p_theme_class_id=>19
,p_list_template_before_rows=>'<div class="t20VerticalSidebarList">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_links_without_bullets
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190412532937042837)
,p_list_template_current=>'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered Links without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LINKS_WITHOUT_BULLETS'
,p_theme_id=>20
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t20VerticalUnorderedLinkswithoutBullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190412860891042837)
,p_list_template_current=>'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>20
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="t20VerticalUnorderedListwithBullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64190413151173042837)
,p_list_template_current=>'<div class="t20current">#TEXT#</div>'
,p_list_template_noncurrent=>'<div>#TEXT#</div>'
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>20
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="t20WizardProgressList">'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>&DONE.</center>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report/borderless
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64190413436171042837)
,p_row_template_name=>'Borderless'
,p_internal_name=>'BORDERLESS'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table class="t20Borderless t20Report" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
''))
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/horizontal_border
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64190413964232042844)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table class="t20HorizontalBorder t20Report" border="0" cellpadding="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/one_column_unordered_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64190414464418042845)
,p_row_template_name=>'One Column Unordered List'
,p_internal_name=>'ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'#COLUMN_VALUE#'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#<tr><td><ul class="t20OneColumnUnorderedList">'))
,p_row_template_after_rows=>'</ul><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>20
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64190414940565042845)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report t20Standard">'))
,p_row_template_after_rows=>'</table><div class="t20CVS">#CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>20
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_ppr
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64190415448556042846)
,p_row_template_name=>'Standard (PPR)'
,p_internal_name=>'STANDARD_PPR'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Standard t20Report">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table><script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_alternating_row_colors
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64190415953691042846)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_internal_name=>'STANDARD,_ALTERNATING_ROW_COLORS'
,p_row_template1=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>'
,p_row_template2=>'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20dataalt">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t20StandardAlternatingRowColors t20Report">'))
,p_row_template_after_rows=>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>20
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64190416464078042847)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'<th class="t20ReportHeader">#COLUMN_HEADER#</th>',
'<td class="t20data">#COLUMN_VALUE#</td>',
'</tr>'))
,p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary=""#REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t20ValueAttributePairs">'
,p_row_template_after_rows=>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_after_last=>'<tr><td colspan="2" class="t20seperate"><br /></td></tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>20
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/no_label
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64190416958395042849)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="t20NoLabel">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_label
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64190417053576042851)
,p_template_name=>'Optional Label'
,p_internal_name=>'OPTIONAL_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="t20OptionalLabel">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_label_with_help
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64190417134862042851)
,p_template_name=>'Optional Label with Help'
,p_internal_name=>'OPTIONAL_LABEL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="t20OptionalLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_label
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64190417258355042851)
,p_template_name=>'Required Label'
,p_internal_name=>'REQUIRED_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="t20Req">*</span><span class="t20RequiredLabel">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_label_with_help
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64190417348468042851)
,p_template_name=>'Required Label with Help'
,p_internal_name=>'REQUIRED_LABEL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="t20Req">*</span><a class="t20RequiredLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t20InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>20
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(64190417440754042851)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_current_page_option=>'<a href="#LINK#" class="t20Current">#NAME#</a>'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'<b>&gt;</b>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(64190417542602042856)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t20HierarchicalMenu">'
,p_current_page_option=>'<li class="t20current"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>20
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(64190418251987042865)
,p_popup_icon=>'#IMAGE_PREFIX#lov_16x16.gif'
,p_popup_icon_attr=>'width="16" height="16" alt="Popup Lov"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css">',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" style="background-color:#FFFFFF;margin:0;"'
,p_before_field_text=>'<div class="t20PopupHead">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next >'
,p_prev_button_text=>'< Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t20PopupBody">'
,p_theme_id=>20
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(64190417658374042856)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th class="t20DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td class="t20MonthBody">'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20CalendarAlternative1">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t20DayTitle">#DD#</div><br />'
,p_day_open_format=>'<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t20WeekendDayTitle">#DD#</div><br />'
,p_weekend_open_format=>'<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t20NonDayTitle">#DD#</div><br />'
,p_nonday_open_format=>'<td class="t20NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>20
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar_alternative_1
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(64190417834955042863)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_internal_name=>'CALENDAR,_ALTERNATIVE_1'
,p_day_of_week_format=>'<th class="t20DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarHolder"> ',
' <tr>',
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td class="t20MonthBody">'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20Calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t20DayTitle">#DD#</div><br />'
,p_day_open_format=>'<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t20WeekendDayTitle">#DD#</div><br />'
,p_weekend_open_format=>'<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t20NonDayTitle">#DD#</div><br />'
,p_nonday_open_format=>'<td class="t20NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>20
,p_theme_class_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/small_calender
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(64190418058696042863)
,p_cal_template_name=>'Small Calender'
,p_internal_name=>'SMALL_CALENDER'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20SmallCalenderHolder"> ',
' <tr>',
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td class="t20MonthBody">'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20SmallCalender">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t20DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t20Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t20Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t20WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t20WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t20NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t20NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>20
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(64190418442554042867)
,p_theme_id=>20
,p_theme_name=>'Modern Blue'
,p_theme_internal_name=>'MODERN_BLUE'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(64190397457071042798)
,p_error_template=>wwv_flow_imp.id(64190397457071042798)
,p_printer_friendly_template=>wwv_flow_imp.id(64190399561667042802)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_login_template=>wwv_flow_imp.id(64190396552376042786)
,p_default_button_template=>wwv_flow_imp.id(64190401050076042804)
,p_default_region_template=>wwv_flow_imp.id(64190406242138042824)
,p_default_chart_template=>wwv_flow_imp.id(64190403239640042821)
,p_default_form_template=>wwv_flow_imp.id(64190403564675042821)
,p_default_reportr_template=>wwv_flow_imp.id(64190406242138042824)
,p_default_tabform_template=>wwv_flow_imp.id(64190406242138042824)
,p_default_wizard_template=>wwv_flow_imp.id(64190407760453042826)
,p_default_menur_template=>wwv_flow_imp.id(64190402347765042820)
,p_default_listr_template=>wwv_flow_imp.id(64190406242138042824)
,p_default_report_template=>wwv_flow_imp.id(64190414940565042845)
,p_default_label_template=>wwv_flow_imp.id(64190417134862042851)
,p_default_menu_template=>wwv_flow_imp.id(64190417440754042851)
,p_default_calendar_template=>wwv_flow_imp.id(64190417658374042856)
,p_default_list_template=>wwv_flow_imp.id(64190412860891042837)
,p_default_option_label=>wwv_flow_imp.id(64190417134862042851)
,p_default_required_label=>wwv_flow_imp.id(64190417348468042851)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(20),'')
,p_css_file_urls=>'#APEX_FILES#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(64190432439837043192)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
begin
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(64190437533099043207)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/security/authentications/html_db
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(64190418858361042876)
,p_name=>'HTML DB'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use internal Application Express account credentials and login page in this application.'
);
end;
/
prompt --application/shared_components/security/authentications/database
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(64190419160529042878)
,p_name=>'DATABASE'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_15=>'64190419160529042878'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use database authentication (user identified by DAD).'
);
end;
/
prompt --application/shared_components/security/authentications/database_account
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(64190419446576042879)
,p_name=>'DATABASE ACCOUNT'
,p_scheme_type=>'NATIVE_DB_ACCOUNTS'
,p_attribute_15=>'64190419446576042879'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use database account credentials.'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_tab_set=>'TS1'
,p_name=>'Report Page'
,p_step_title=>'Report Page'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20130829072241'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190422941169043102)
,p_plug_name=>'Customisation Objects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'             "ID",',
'             "KEY",',
'             "OBJECT_TYPE",',
'             "SUBTYPE",',
'             "REGISTERED_APPLICATION",',
'             "OBJECT_NAME",',
'             "SCHEMA",',
'             "SUB_ITEM__NAVIGATION_PATH",',
'             "NOTES_DESCRIPTION",',
'             "BP_REF",',
'             "BP_DESCRIPTION",',
'             "RUN_METHOD",',
'             "ASSESSMENT",',
'             "RELATED_OBJECTS",',
'             "CUSTOMISATIONNUMBER",',
'             "DATE_ADDED",',
'             "ADDED_BY_WHOM",',
'             "R12_KEEP_YN"',
' from   "XX_CUST_OBJECTS" ',
' where CUSTOMISATIONNUMBER = :P1_CUSTOMISATIONNNUMBER;'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(64190423160782043103)
,p_name=>'Customisation Objects'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:3:#APP_SESSION#::::P3_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#themes/theme_20/ed-item.gif" alt="Edit" />'
,p_owner=>'POULTD10'
,p_internal_uid=>64190423160782043103
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423251970043131)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423359997043140)
,p_db_column_name=>'KEY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Key'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423456450043140)
,p_db_column_name=>'OBJECT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Object Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OBJECT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423545824043140)
,p_db_column_name=>'SUBTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Subtype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SUBTYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423636936043141)
,p_db_column_name=>'REGISTERED_APPLICATION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Registered Application'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'REGISTERED_APPLICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423733592043141)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Object Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OBJECT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423832668043141)
,p_db_column_name=>'SCHEMA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Schema'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SCHEMA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190423965191043141)
,p_db_column_name=>'SUB_ITEM__NAVIGATION_PATH'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sub Item  Navigation Path'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SUB_ITEM__NAVIGATION_PATH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424058058043142)
,p_db_column_name=>'NOTES_DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Notes Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NOTES_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424154784043142)
,p_db_column_name=>'BP_REF'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Bp Ref'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BP_REF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424238495043142)
,p_db_column_name=>'BP_DESCRIPTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Bp Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BP_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424355973043143)
,p_db_column_name=>'RUN_METHOD'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Run Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RUN_METHOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424453155043143)
,p_db_column_name=>'ASSESSMENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Assessment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ASSESSMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424543207043143)
,p_db_column_name=>'RELATED_OBJECTS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Related Objects'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RELATED_OBJECTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424640273043143)
,p_db_column_name=>'CUSTOMISATIONNUMBER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Customisationnumber'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMISATIONNUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424845502043144)
,p_db_column_name=>'ADDED_BY_WHOM'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Added By Whom'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ADDED_BY_WHOM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64190424935342043144)
,p_db_column_name=>'R12_KEEP_YN'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'R12 Keep Yn'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'R12_KEEP_YN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194243646190151136)
,p_db_column_name=>'DATE_ADDED'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Date Added'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DATE_ADDED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64190443634580047992)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'641102825'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:KEY:OBJECT_TYPE:SUBTYPE:REGISTERED_APPLICATION:OBJECT_NAME:SCHEMA:SUB_ITEM__NAVIGATION_PATH:NOTES_DESCRIPTION:BP_REF:BP_DESCRIPTION:RUN_METHOD:ASSESSMENT:RELATED_OBJECTS:CUSTOMISATIONNUMBER:DATE_ADDED:ADDED_BY_WHOM:R12_KEEP_YN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190442133215043232)
,p_plug_name=>'BreadCrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190425137353043147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64190422941169043102)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::NO:2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64193196138649876187)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64190422941169043102)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64193196443068876188)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64193196138649876187)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64194242651469133755)
,p_name=>'P1_CUSTOMISATIONNNUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64190422941169043102)
,p_prompt=>'Customisationn number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_tab_set=>'TS1'
,p_name=>'Insert Form'
,p_step_title=>'Insert Form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20131127182400'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190425754149043151)
,p_plug_name=>'Customisation Object'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190403564675042821)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190442352785043233)
,p_plug_name=>'BreadCrumbs 2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190425952094043152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190426036054043152)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64190426434977043154)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64190426036054043152)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190426547109043171)
,p_name=>'P2_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417348468042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190426941809043177)
,p_name=>'P2_KEY'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Key'
,p_source=>'KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190427148467043177)
,p_name=>'P2_OBJECT_TYPE'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Object Type'
,p_source=>'OBJECT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OBJECT TYPE'
,p_lov=>'.'||wwv_flow_imp.id(64191873137116353523)||'.'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190427363692043177)
,p_name=>'P2_SUBTYPE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subtype'
,p_source=>'SUBTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190427556213043177)
,p_name=>'P2_REGISTERED_APPLICATION'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Registered Application'
,p_source=>'REGISTERED_APPLICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190427759146043178)
,p_name=>'P2_OBJECT_NAME'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Object Name'
,p_source=>'OBJECT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>60
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190427946328043178)
,p_name=>'P2_SCHEMA'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Schema'
,p_source=>'SCHEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190428140440043178)
,p_name=>'P2_SUB_ITEM__NAVIGATION_PATH'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Item  Navigation Path'
,p_source=>'SUB_ITEM__NAVIGATION_PATH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190428358855043178)
,p_name=>'P2_NOTES_DESCRIPTION'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes Description'
,p_source=>'NOTES_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190428537290043179)
,p_name=>'P2_BP_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bp Ref'
,p_source=>'BP_REF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190428754805043179)
,p_name=>'P2_BP_DESCRIPTION'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bp Description'
,p_source=>'BP_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190428952805043179)
,p_name=>'P2_RUN_METHOD'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Run Method'
,p_source=>'RUN_METHOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190429134923043179)
,p_name=>'P2_ASSESSMENT'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assessment'
,p_source=>'ASSESSMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190429363312043180)
,p_name=>'P2_RELATED_OBJECTS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Related Objects'
,p_source=>'RELATED_OBJECTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190429540589043180)
,p_name=>'P2_CUSTOMISATIONNUMBER'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customisation number'
,p_source=>'CUSTOMISATIONNUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CUSTOMISATION LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customisation_number||'' - ''||name d, cust_list_id r',
'from   xx_cust_list',
'order by r'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190429741483043180)
,p_name=>'P2_DATE_ADDED'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Added'
,p_format_mask=>'DD-MON-RR'
,p_source=>'DATE_ADDED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190429947716043180)
,p_name=>'P2_ADDED_BY_WHOM'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Added By Whom'
,p_source=>'ADDED_BY_WHOM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190430158792043181)
,p_name=>'P2_R12_KEEP_YN'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_imp.id(64190425754149043151)
,p_use_cache_before_default=>'NO'
,p_prompt=>'R12 Keep Yn'
,p_source=>'R12_KEEP_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(64190426843120043174)
,p_validation_name=>'P2_ID must be number'
,p_validation_sequence=>1
,p_validation=>'P2_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Id must be number.'
,p_associated_item=>wwv_flow_imp.id(64190426547109043171)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190430456428043181)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XX_CUST_OBJECTS'
,p_attribute_02=>'XX_CUST_OBJECTS'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table XX_CUST_OBJECTS.'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_tab_set=>'TS1'
,p_name=>'Update Form'
,p_step_title=>'Update Form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20131120174507'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190431748036043186)
,p_plug_name=>'Customisation Object'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190403564675042821)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190442534024043233)
,p_plug_name=>'BreadCrumbs 3'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190437345858043207)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P3_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190437241700043207)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P3_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190431963061043186)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190432134599043186)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190432058841043186)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64194222950251429048)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_button_name=>'DEPENDENCIES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Dependencies'
,p_button_position=>'TOP'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64194223236389429081)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_REFERENCED_OWNER,P7_REFERENCED_NAME:&P3_SCHEMA.,&P3_OBJECT_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64194222950251429048)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64190433144363043197)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64190440845080043223)
,p_branch_action=>'f?p=&FLOW_ID.:3:&SESSION.::&DEBUG.::P3_ID:&P3_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64190437241700043207)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64190441064124043223)
,p_branch_action=>'f?p=&FLOW_ID.:3:&SESSION.::&DEBUG.::P3_ID:&P3_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64190437345858043207)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190433360659043197)
,p_name=>'P3_ID'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190433447759043203)
,p_name=>'P3_KEY'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Key'
,p_source=>'KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190433663110043203)
,p_name=>'P3_OBJECT_TYPE'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Object Type'
,p_source=>'OBJECT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OBJECT TYPE'
,p_lov=>'.'||wwv_flow_imp.id(64191873137116353523)||'.'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190433848432043203)
,p_name=>'P3_SUBTYPE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subtype'
,p_source=>'SUBTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190434033248043203)
,p_name=>'P3_REGISTERED_APPLICATION'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Registered Application'
,p_source=>'REGISTERED_APPLICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190434234570043204)
,p_name=>'P3_OBJECT_NAME'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Object Name'
,p_source=>'OBJECT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190434439960043204)
,p_name=>'P3_SCHEMA'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Schema'
,p_source=>'SCHEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190434639391043204)
,p_name=>'P3_SUB_ITEM__NAVIGATION_PATH'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Item  Navigation Path'
,p_source=>'SUB_ITEM__NAVIGATION_PATH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190434836395043204)
,p_name=>'P3_NOTES_DESCRIPTION'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes Description'
,p_source=>'NOTES_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>5
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190435047921043205)
,p_name=>'P3_BP_REF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bp Ref'
,p_source=>'BP_REF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190435253389043205)
,p_name=>'P3_BP_DESCRIPTION'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bp Description'
,p_source=>'BP_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190435434220043205)
,p_name=>'P3_RUN_METHOD'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Run Method'
,p_source=>'RUN_METHOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190435636746043205)
,p_name=>'P3_ASSESSMENT'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assessment'
,p_source=>'ASSESSMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>5
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190435834585043206)
,p_name=>'P3_RELATED_OBJECTS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Related Objects'
,p_source=>'RELATED_OBJECTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>5
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190436045199043206)
,p_name=>'P3_CUSTOMISATIONNUMBER'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customisationnumber'
,p_source=>'CUSTOMISATIONNUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customisation_number||'' - ''||name d, customisation_number r',
'from   xx_cust_list',
'order by r'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'%'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190436243328043206)
,p_name=>'P3_DATE_ADDED'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Added'
,p_source=>'DATE_ADDED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190436436980043206)
,p_name=>'P3_ADDED_BY_WHOM'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Added By Whom'
,p_source=>'ADDED_BY_WHOM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190436639250043206)
,p_name=>'P3_R12_KEEP_YN'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_use_cache_before_default=>'NO'
,p_prompt=>'R12 Keep Yn'
,p_source=>'R12_KEEP_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(64193841148004447513)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'%'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190439852704043211)
,p_name=>'P3_ID_NEXT'
,p_item_sequence=>28
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_prompt=>'P3_ID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190440051563043212)
,p_name=>'P3_ID_PREV'
,p_item_sequence=>38
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_prompt=>'P3_ID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190440236862043213)
,p_name=>'P3_ID_COUNT'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_imp.id(64190431748036043186)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_colspan=>1
,p_rowspan=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190436963840043207)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XX_CUST_OBJECTS'
,p_attribute_02=>'XX_CUST_OBJECTS'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190440660492043223)
,p_process_sequence=>11
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'XX_CUST_OBJECTS'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'ID'
,p_attribute_09=>'P3_ID_NEXT'
,p_attribute_10=>'P3_ID_PREV'
,p_attribute_13=>'P3_ID_COUNT'
,p_process_error_message=>'Unable to run Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190437160592043207)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XX_CUST_OBJECTS'
,p_attribute_02=>'XX_CUST_OBJECTS'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table XX_CUST_OBJECTS.'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_tab_set=>'TS1'
,p_name=>'Success Page'
,p_step_title=>'Success Page'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'11'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20130730154626'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190431141033043183)
,p_plug_name=>'Success'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190406242138042824)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p/>',
'<table>',
'<tr>',
'<td valign="top">',
'<img src="#IMAGE_PREFIX#themes/theme_20/Fndokay1.gif" alt="success" />',
'</td>',
'<td class="fielddata" valign="bottom">',
'The data has been inserted successfully.',
'<p/>',
'<table cellspacing="10" cellpadding="10">',
'<tr>',
'<td align="center">',
'<a href="f?p=&APP_ID.:2:&SESSION.:::2" class="instructiontext">',
'<img src="#IMAGE_PREFIX#menu/add_record_64.gif" border=0 width="64" height="64" alt="Insert Another" title="Insert Another" /><br>',
'Insert Another</a>',
'</td>',
'<td align="center">',
'<a href="f?p=&APP_ID.:1:&SESSION.:::1" class="instructiontext">',
'<img src="#IMAGE_PREFIX#menu/search_64.gif" border=0 width="64" height="64" alt="View Report" title="View Report" /><br>',
'View Report</a>',
'</td>',
'</tr>',
'</table>',
'</td>',
'</tr>',
'</table>',
'<p/>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190442764649043233)
,p_plug_name=>'BreadCrumbs 4'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Customisation Listing'
,p_step_title=>'Customisation Listing'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20131127185407'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64193127732783022149)
,p_plug_name=>'Customisation Listing'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "CUST_LIST_ID", ',
'"NAME",',
'"DESCRIPTION",',
'"APPLICATION_ID",',
'"ASSESSMENT",',
'"USED",',
'"R12_OBSOLETE",',
'"R12_MIGRATE",',
'"TEAM_OWNER",',
'"CUSTOMISATION_NUMBER"',
'from "#OWNER#"."XX_CUST_LIST" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(64193127944624022149)
,p_name=>'Customisation Listing'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_CUST_LIST_ID:#CUST_LIST_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'POULTD10'
,p_internal_uid=>64193127944624022149
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128942920022172)
,p_db_column_name=>'CUSTOMISATION_NUMBER'
,p_display_order=>1
,p_column_identifier=>'J'
,p_column_label=>'Customisation Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'CUSTOMISATION_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128064377022164)
,p_db_column_name=>'CUST_LIST_ID'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Cust List Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CUST_LIST_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128150698022169)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128249758022169)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128359490022169)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Application Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_static_id=>'APPLICATION_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128447424022170)
,p_db_column_name=>'ASSESSMENT'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Assessment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ASSESSMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128537632022170)
,p_db_column_name=>'USED'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Used'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'USED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128635384022170)
,p_db_column_name=>'R12_OBSOLETE'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'R12 Obsolete'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'R12_OBSOLETE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128739802022171)
,p_db_column_name=>'R12_MIGRATE'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'R12 Migrate'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'R12_MIGRATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64193128846771022171)
,p_db_column_name=>'TEAM_OWNER'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Team Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'TEAM_OWNER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64193129633784023421)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'641102830'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMISATION_NUMBER:NAME:DESCRIPTION:APPLICATION_ID:ASSESSMENT:USED:R12_OBSOLETE:R12_MIGRATE:TEAM_OWNER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64207563446851761380)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64193129152074022172)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64193127732783022149)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64193194236786866277)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64193127732783022149)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Customisation Listing'
,p_step_title=>'Customisation Listing'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20140305121514'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64193123145256022059)
,p_plug_name=>'Customisation Listing'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190403564675042821)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64193123743138022082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64193123553487022077)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P6_CUST_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64193123454814022077)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P6_CUST_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64193123335682022077)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P6_CUST_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64194229351823543055)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_button_name=>'OBJECTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Database Objects'
,p_button_position=>'TOP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64219531237609430834)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_button_name=>'CONCURRENT_PROGRAMS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Concurrent Programs'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_CUST_ID:&P6_CUST_LIST_ID.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64194229652680543056)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P1_CUSTOMISATIONNNUMBER:&P6_CUSTOMISATION_NUMBER.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64194229351823543055)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64219531556126430858)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_CUST_ID:&P10_CUST_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64219531237609430834)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64193124348066022086)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193124560716022092)
,p_name=>'P6_CUST_LIST_ID'
,p_item_sequence=>26
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust List Id'
,p_source=>'CUST_LIST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193124747443022120)
,p_name=>'P6_NAME'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193124951246022121)
,p_name=>'P6_DESCRIPTION'
,p_item_sequence=>23
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193125157198022122)
,p_name=>'P6_APPLICATION_ID'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193125349327022122)
,p_name=>'P6_ASSESSMENT'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assessment'
,p_source=>'ASSESSMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193125544649022122)
,p_name=>'P6_USED'
,p_item_sequence=>28
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Used'
,p_source=>'USED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(64193841148004447513)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'%'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193125752858022122)
,p_name=>'P6_R12_OBSOLETE'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'R12 Obsolete'
,p_source=>'R12_OBSOLETE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(64193841148004447513)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'%'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193125961227022123)
,p_name=>'P6_R12_MIGRATE'
,p_item_sequence=>29
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'R12 Migrate'
,p_source=>'R12_MIGRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(64193841148004447513)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'%'
,p_lov_null_value=>'%null%'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193126144365022123)
,p_name=>'P6_TEAM_OWNER'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Owner'
,p_source=>'TEAM_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64193126349606022123)
,p_name=>'P6_CUSTOMISATION_NUMBER'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_imp.id(64193123145256022059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customisation Number'
,p_source=>'CUSTOMISATION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64193126638576022126)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XX_CUST_LIST'
,p_attribute_02=>'XX_CUST_LIST'
,p_attribute_03=>'P6_CUST_LIST_ID'
,p_attribute_04=>'CUST_LIST_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64193126845767022131)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select XX_CUST_LIST_S1.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P6_CUST_LIST_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(64193123335682022077)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64193127034115022131)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XX_CUST_LIST'
,p_attribute_02=>'XX_CUST_LIST'
,p_attribute_03=>'P6_CUST_LIST_ID'
,p_attribute_04=>'CUST_LIST_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table XX_CUST_LIST.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64193127242139022132)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_imp.id(64193123553487022077)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Dependencies'
,p_step_title=>'Dependencies'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20131029122301'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(64194221333030414749)
,p_name=>'Object Dependencies'
,p_template=>wwv_flow_imp.id(64190406242138042824)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM all_dependencies',
'WHERE referenced_owner = upper(:P7_REFERENCED_OWNER)',
'and referenced_name = upper(:P7_REFERENCED_NAME)'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(64190414940565042845)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_query_asc_image_attr=>'width="13" height="12" alt=""'
,p_query_desc_image_attr=>'width="13" height="12" alt=""'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194221664288414777)
,p_query_column_id=>1
,p_column_alias=>'OWNER'
,p_column_display_sequence=>1
,p_column_heading=>'OWNER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194221740694414779)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'NAME'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194221851493414779)
,p_query_column_id=>3
,p_column_alias=>'TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'TYPE'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194221950102414779)
,p_query_column_id=>4
,p_column_alias=>'REFERENCED_OWNER'
,p_column_display_sequence=>4
,p_column_heading=>'REFERENCED_OWNER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194222063716414779)
,p_query_column_id=>5
,p_column_alias=>'REFERENCED_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'REFERENCED_NAME'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194222154162414779)
,p_query_column_id=>6
,p_column_alias=>'REFERENCED_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'REFERENCED_TYPE'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194222253094414779)
,p_query_column_id=>7
,p_column_alias=>'REFERENCED_LINK_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'REFERENCED_LINK_NAME'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64194222357877414779)
,p_query_column_id=>8
,p_column_alias=>'DEPENDENCY_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'DEPENDENCY_TYPE'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64194226042211521405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64194221333030414749)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Finish'
,p_button_position=>'TOP'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64194226333942521405)
,p_branch_action=>'f?p=&FLOW_ID.:3:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64194226042211521405)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64194222544579418034)
,p_name=>'P7_REFERENCED_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64194221333030414749)
,p_prompt=>'Referenced Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64194222750120419581)
,p_name=>'P7_REFERENCED_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64194221333030414749)
,p_prompt=>'Referenced Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Concurrent Programs'
,p_step_title=>'Concurrent Programs'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'DALEPOULTER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230319134643'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64196371752352177599)
,p_plug_name=>'Concurrent Programs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT concurrent_program_id,application_name,',
'  user_concurrent_program_name,',
'  xccp.description,',
'  concurrent_program_name,',
'  enabled_flag,',
'  execution_file_name,',
'   execution_method,',
'  customisation_number,',
'  xccp.r12_keep,',
'  xccp.assessment',
'FROM xx_cust_conc_prog xccp,',
'xx_cust_list xcl',
'WHERE  xcl.cust_list_id = xccp.cust_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(64196371939985177608)
,p_name=>'Concurrent Programs'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::::P10_CUST_CONC_PROG_ID:#CUST_CONC_PROG_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'POULTD10'
,p_internal_uid=>64196371939985177608
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196373361353206325)
,p_db_column_name=>'CONCURRENT_PROGRAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Concurrent Program Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CONCURRENT_PROGRAM_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196373463863206326)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Application Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'APPLICATION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196373561671206326)
,p_db_column_name=>'USER_CONCURRENT_PROGRAM_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'User Concurrent Program Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'USER_CONCURRENT_PROGRAM_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196373641817206326)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196373753868206326)
,p_db_column_name=>'CONCURRENT_PROGRAM_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Concurrent Program Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CONCURRENT_PROGRAM_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196373855956206327)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ENABLED_FLAG'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196373941172206327)
,p_db_column_name=>'EXECUTION_FILE_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Execution File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'EXECUTION_FILE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196374062937206327)
,p_db_column_name=>'EXECUTION_METHOD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Execution Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'EXECUTION_METHOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196374147707206328)
,p_db_column_name=>'CUSTOMISATION_NUMBER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Customisation Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CUSTOMISATION_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196374248838206328)
,p_db_column_name=>'R12_KEEP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'R12 Keep'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'R12_KEEP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64196374338212206328)
,p_db_column_name=>'ASSESSMENT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Assessment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ASSESSMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64196372461306177941)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'641102835'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'APPLICATION_NAME:USER_CONCURRENT_PROGRAM_NAME:DESCRIPTION:CONCURRENT_PROGRAM_NAME:ENABLED_FLAG:EXECUTION_FILE_NAME:EXECUTION_METHOD:CUSTOMISATION_NUMBER:R12_KEEP:ASSESSMENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64219592950346879165)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64196372348843177650)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64196371752352177599)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::NO:10'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64219568257273531118)
,p_name=>'P8_CUST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64196371752352177599)
,p_prompt=>'Cust Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Menu'
,p_step_title=>'Menu'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20130820104757'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64193176263556656416)
,p_plug_name=>'Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190406242138042824)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_imp.id(64193174757192645052)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(64190411949190042836)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Concurrent Program'
,p_step_title=>'Concurrent Program'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
,p_last_updated_by=>'DALEPOULTER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230319135409'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64196368638652177281)
,p_plug_name=>'Concurrent Programs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190403564675042821)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64196368948845177429)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P10_CUST_CONC_PROG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64196369261807177443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64196368846626177429)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P10_CUST_CONC_PROG_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64196369037870177429)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10_CUST_CONC_PROG_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64196369750764177450)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64144985942819333101)
,p_name=>'P10_APPLICATION_NAME'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Name'
,p_source=>'APPLICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64144986016683333102)
,p_name=>'P10_USER_CONCURRENT_PROGRAM_NAME'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Concurrent Program Name'
,p_source=>'USER_CONCURRENT_PROGRAM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64144986118762333103)
,p_name=>'P10_DESCRIPTION'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64144986278163333104)
,p_name=>'P10_CONCURRENT_PROGRAM_NAME'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Concurrent Program Name'
,p_source=>'CONCURRENT_PROGRAM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64144986457192333106)
,p_name=>'P10_ENABLED_FLAG'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enabled Flag'
,p_source=>'ENABLED_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64144986530021333107)
,p_name=>'P10_EXECUTION_METHOD'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Execution Method'
,p_source=>'EXECUTION_METHOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64196369936845177491)
,p_name=>'P10_CUST_CONC_PROG_ID'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cust Conc Prog Id'
,p_source=>'CUST_CONC_PROG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64196370153052177526)
,p_name=>'P10_R12_KEEP'
,p_item_sequence=>53
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'R12 Keep'
,p_source=>'R12_KEEP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_imp.id(64193841148004447513)||'.'
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64196370342479177527)
,p_name=>'P10_ASSESSMENT'
,p_item_sequence=>54
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assessment'
,p_source=>'ASSESSMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64196378034996245939)
,p_name=>'P10_CUST_ID'
,p_item_sequence=>52
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customisation number'
,p_source=>'CUST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CUSTOMISATION LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customisation_number||'' - ''||name d, cust_list_id r',
'from   xx_cust_list',
'order by r'))
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64219590855840852336)
,p_name=>'P10_PROCESS_NUMBER'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Number'
,p_source=>'PROCESS_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64219592233938864930)
,p_name=>'P10_UAT_SCRIPT_NUMBER'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(64196368638652177281)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Uat Script Number'
,p_source=>'UAT_SCRIPT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64196370658663177538)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from XX_CUST_CONC_PROG'
,p_attribute_02=>'XX_CUST_CONC_PROG'
,p_attribute_03=>'P10_CUST_CONC_PROG_ID'
,p_attribute_04=>'CUST_CONC_PROG_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64196370861586177564)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select XX_CUST_CONC_PROG_S1.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P10_CUST_CONC_PROG_ID := get_pk; ',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_imp.id(64196368846626177429)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64196371038293177564)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of XX_CUST_CONC_PROG'
,p_attribute_02=>'XX_CUST_CONC_PROG'
,p_attribute_03=>'P10_CUST_CONC_PROG_ID'
,p_attribute_04=>'CUST_CONC_PROG_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table XX_CUST_CONC_PROG.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64196371246244177564)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_imp.id(64196369037870177429)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'All Customisation Objects'
,p_step_title=>'All Customisation Objects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20131126171916'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64194250745915222564)
,p_plug_name=>'Customisation Objects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'             "ID",',
'             "KEY",',
'             "OBJECT_TYPE",',
'             "SUBTYPE",',
'             "REGISTERED_APPLICATION",',
'             "OBJECT_NAME",',
'             "SCHEMA",',
'             "SUB_ITEM__NAVIGATION_PATH",',
'             "NOTES_DESCRIPTION",',
'             "BP_REF",',
'             "BP_DESCRIPTION",',
'             "RUN_METHOD",',
'             "ASSESSMENT",',
'             "RELATED_OBJECTS",',
'             "CUSTOMISATIONNUMBER",',
'             "DATE_ADDED",',
'             "ADDED_BY_WHOM",',
'             "R12_KEEP_YN"',
' from   "XX_CUST_OBJECTS" ;'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(64194250934506222565)
,p_name=>'Customisation Objects'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:3:#APP_SESSION#::::P3_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#themes/theme_20/ed-item.gif" alt="Edit" />'
,p_owner=>'POULTD10'
,p_internal_uid=>64194250934506222565
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251035800222570)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251149247222571)
,p_db_column_name=>'KEY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Key'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251264307222571)
,p_db_column_name=>'OBJECT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Object Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OBJECT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251345846222571)
,p_db_column_name=>'SUBTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Subtype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SUBTYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251463669222574)
,p_db_column_name=>'REGISTERED_APPLICATION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Registered Application'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'REGISTERED_APPLICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251547535222574)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Object Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'OBJECT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251664943222574)
,p_db_column_name=>'SCHEMA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Schema'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SCHEMA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251741921222574)
,p_db_column_name=>'SUB_ITEM__NAVIGATION_PATH'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sub Item  Navigation Path'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'SUB_ITEM__NAVIGATION_PATH'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251837449222574)
,p_db_column_name=>'NOTES_DESCRIPTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Notes Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'NOTES_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194251940392222575)
,p_db_column_name=>'BP_REF'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Bp Ref'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BP_REF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252036633222575)
,p_db_column_name=>'BP_DESCRIPTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Bp Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'BP_DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252146707222575)
,p_db_column_name=>'RUN_METHOD'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Run Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RUN_METHOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252262470222575)
,p_db_column_name=>'ASSESSMENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Assessment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ASSESSMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252335347222575)
,p_db_column_name=>'RELATED_OBJECTS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Related Objects'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'RELATED_OBJECTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252463793222576)
,p_db_column_name=>'CUSTOMISATIONNUMBER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Customisationnumber'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'CUSTOMISATIONNUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252548699222576)
,p_db_column_name=>'ADDED_BY_WHOM'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Added By Whom'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ADDED_BY_WHOM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252657553222576)
,p_db_column_name=>'R12_KEEP_YN'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'R12 Keep Yn'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'R12_KEEP_YN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194252752978222576)
,p_db_column_name=>'DATE_ADDED'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Date Added'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_static_id=>'DATE_ADDED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64194252841279222577)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'641102839'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:KEY:OBJECT_TYPE:SUBTYPE:REGISTERED_APPLICATION:OBJECT_NAME:SCHEMA:SUB_ITEM__NAVIGATION_PATH:NOTES_DESCRIPTION:BP_REF:BP_DESCRIPTION:RUN_METHOD:ASSESSMENT:RELATED_OBJECTS:CUSTOMISATIONNUMBER:DATE_ADDED:ADDED_BY_WHOM:R12_KEEP_YN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64194252935847222579)
,p_plug_name=>'BreadCrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64207343547334554062)
,p_plug_name=>'Custom Objects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64190402347765042820)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_imp.id(64190419738823042880)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64190417440754042851)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64194253355392222583)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64194250745915222564)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::NO:2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64194253152402222580)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64194250745915222564)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64194253838500222584)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64194253152402222580)
,p_branch_sequence=>10
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Concurrent Programs'
,p_step_title=>'Concurrent Programs'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
,p_last_updated_by=>'DALEPOULTER@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230319134108'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64194346037267039551)
,p_plug_name=>'Concurrent Programs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT concurrent_program_id,application_name,',
'  user_concurrent_program_name,',
'  xccp.description,',
'  concurrent_program_name,',
'  enabled_flag,',
'  execution_file_name,',
'   execution_method,',
'  customisation_number,',
'  xccp.r12_keep,',
'  xccp.assessment',
'FROM xx_cust_conc_prog xccp,',
'xx_cust_list xcl',
'WHERE  xcl.cust_list_id = xccp.cust_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'%null%'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(64194346159729039551)
,p_name=>'Concurrent Programs'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'CONCURRENT_PROGRAM_ID'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_pivot=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'POULTD10'
,p_internal_uid=>64194346159729039551
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194346338265039556)
,p_db_column_name=>'CONCURRENT_PROGRAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Concurrent Program Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CONCURRENT_PROGRAM_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194346433641039558)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Application Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'APPLICATION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194346542727039559)
,p_db_column_name=>'USER_CONCURRENT_PROGRAM_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'User Concurrent Program Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'USER_CONCURRENT_PROGRAM_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194346650732039559)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194346759453039559)
,p_db_column_name=>'CONCURRENT_PROGRAM_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Concurrent Program Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CONCURRENT_PROGRAM_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194346863771039559)
,p_db_column_name=>'ENABLED_FLAG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Enabled Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ENABLED_FLAG'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194346954100039559)
,p_db_column_name=>'EXECUTION_FILE_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Execution File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'EXECUTION_FILE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194347059815039560)
,p_db_column_name=>'EXECUTION_METHOD'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Execution Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'EXECUTION_METHOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194347656811046289)
,p_db_column_name=>'CUSTOMISATION_NUMBER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Customisation Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CUSTOMISATION_NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194353664448199813)
,p_db_column_name=>'R12_KEEP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'R12 Keep'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'R12_KEEP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64194353762328199814)
,p_db_column_name=>'ASSESSMENT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Assessment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'ASSESSMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64194347135340040029)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'641102841'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'CONCURRENT_PROGRAM_ID:APPLICATION_NAME:USER_CONCURRENT_PROGRAM_NAME:DESCRIPTION:CONCURRENT_PROGRAM_NAME:ENABLED_FLAG:EXECUTION_FILE_NAME:EXECUTION_METHOD:CUSTOMISATION_NUMBER:R12_KEEP:ASSESSMENT'
,p_sort_column_1=>'USER_CONCURRENT_PROGRAM_NAME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(64194354035490200911)
,p_report_id=>wwv_flow_imp.id(64194347135340040029)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'CUSTOMISATION_NUMBER'
,p_operator=>'='
,p_expr=>'21'
,p_condition_sql=>'"CUSTOMISATION_NUMBER" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64190396552376042786)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'POULTD10'
,p_last_upd_yyyymmddhh24miss=>'20130820105349'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64190420536036042900)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64190421152974042934)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64190420536036042900)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64190401050076042804)
,p_button_image_alt=>'Login'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190420746195042923)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64190420536036042900)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>2
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64190420942201042934)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64190420536036042900)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64190417134862042851)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190421563692042946)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190421354728042936)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE   => :APP_ID||'':9''',
'    );'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190421954972042946)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64190421735047042946)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'   :P101_USERNAME := c.vals(1);',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
