set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 101 - Customisations Catalogue
--
-- Application Export:
--   Application:     101
--   Name:            Customisations Catalogue
--   Date and Time:   16:16 Tuesday April 1, 2014
--   Exported By:     POULTD10
--   Flashback:       0
--   Export Type:     Application Export
--   Version: 3.2.1.00.10
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user APEX_030200 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                13
--     Items:              62
--     Computations:        0
--     Validations:         1
--     Processes:          16
--     Regions:            21
--     Buttons:            26
--   Shared Components
--     Breadcrumbs:         1
--        Entries           7
--     Items:               1
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            1
--        Tabs:             1
--     NavBars:             1
--     Lists:               1
--     Shortcuts:           2
--     Themes:              1
--     Templates:
--        Page:            15
--        List:            17
--        Report:           7
--        Label:            5
--        Region:          22
--     Messages:            0
--     Build Options:       0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_030200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>28386323219475260);
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en-us'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2009.01.12');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 101;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(101);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(101);
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => 101,
  p_display_id=> 101,
  p_owner => 'APPS',
  p_name  => 'Customisations Catalogue',
  p_alias => 'F101',
  p_page_view_logging => 'YES',
  p_default_page_template=> 80116224486329018 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 80118329082329022 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 80125009553329044 + wwv_flow_api.g_id_offset,
  p_error_template    => 80116224486329018 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'N',
  p_checksum_salt_last_reset => '20140401161612',
  p_max_session_length_sec=> 28800,
  p_home_link         => 'f?p=101:9:&SESSION.',
  p_flow_language     => 'en-us',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_flow_image_prefix => '/i/',
  p_documentation_banner=> '',
  p_authentication    => 'CUSTOM2',
  p_login_url         => '',
  p_logout_url        => 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_application_tab_set=> 1,
  p_public_url_prefix => '',
  p_public_user       => 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server      => '',
  p_cust_authentication_process=> '.'||to_char(80137625776329096 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'release 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_theme_id => 20,
  p_default_label_template => 80135902277329071 + wwv_flow_api.g_id_offset,
  p_default_report_template => 80133707980329065 + wwv_flow_api.g_id_offset,
  p_default_list_template => 80131628306329057 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 80136208169329071 + wwv_flow_api.g_id_offset,
  p_default_button_template => 80119817491329024 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 80122007055329041 + wwv_flow_api.g_id_offset,
  p_default_form_template => 80122332090329041 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 80126527868329046 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 80125009553329044 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>80125009553329044 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 80121115180329040 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 80125009553329044 + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss=> '20140401161612',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 80140807389329167 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 200,
  p_icon_image     => '',
  p_icon_subtext   => 'Logout',
  p_icon_target    => '&LOGOUT_URL.',
  p_icon_image_alt => 'Logout',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => '',
  p_icon_bar_disp_cond_type => 'CURRENT_LOOK_IS_1',
  p_begins_on_new_line=> '',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
--application/shared_components/logic/application_items/fsp_after_login_url
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 80162200609333755 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_item_comment=> '');
 
null;
 
end;
/

prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_customisation_objects
wwv_flow_api.create_tab (
  p_id=> 80141615116329190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_CUSTOMISATION_OBJECTS',
  p_tab_text => 'Customisation Objects',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '2,4,3',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
--application/shared_components/user_interface/lov/customisation_list
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 83938113801610132 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'CUSTOMISATION LIST',
  p_lov_query=> 'select customisation_number||'' - ''||name d, cust_list_id r'||chr(10)||
'from   xx_cust_list'||chr(10)||
'order by r');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/object_type
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 81591904531639743 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'OBJECT TYPE',
  p_lov_query=> '.'||to_char(81591904531639743 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>81592201765639802 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>1,
  p_lov_disp_value=>'Package Body',
  p_lov_return_value=>'PACKAGE BODY',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>81592411180639805 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>2,
  p_lov_disp_value=>'Package Header',
  p_lov_return_value=>'PACKAGE',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>84767701873114592 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Table',
  p_lov_return_value=>'TABLE',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>84770321743129833 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Synonym',
  p_lov_return_value=>'SYNONYM',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>96036614962002860 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Sql Loader',
  p_lov_return_value=>'SQLLDR',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>96209221669164475 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Procedure',
  p_lov_return_value=>'PROCEDURE',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>96379523154180644 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Host',
  p_lov_return_value=>'HOST',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>96845201444808816 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Workflow',
  p_lov_return_value=>'WORKFLOW',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>97065618998898292 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'Form',
  p_lov_return_value=>'FORM',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>82760309127292659 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>30,
  p_lov_disp_value=>'View',
  p_lov_return_value=>'VIEW',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>87066816588987135 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>40,
  p_lov_disp_value=>'Report',
  p_lov_return_value=>'REPORT',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>87779705533996329 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>50,
  p_lov_disp_value=>'Form Library',
  p_lov_return_value=>'LIBRARY',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>89146704742167614 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>60,
  p_lov_disp_value=>'Type',
  p_lov_return_value=>'TYPE',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>90286123216451603 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>70,
  p_lov_disp_value=>'Function',
  p_lov_return_value=>'FUNCTION',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>91412314262672087 + wwv_flow_api.g_id_offset,
  p_lov_id=>81591904531639743 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>80,
  p_lov_disp_value=>'Trigger',
  p_lov_return_value=>'TRIGGER',
  p_lov_data_comment=> '');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/yes_no
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 83559915419733733 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'YES_NO',
  p_lov_query=> '.'||to_char(83559915419733733 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>83560218041733755 + wwv_flow_api.g_id_offset,
  p_lov_id=>83559915419733733 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>1,
  p_lov_disp_value=>'Yes',
  p_lov_return_value=>'Y',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>83560411703733757 + wwv_flow_api.g_id_offset,
  p_lov_id=>83559915419733733 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>2,
  p_lov_disp_value=>'No',
  p_lov_return_value=>'N',
  p_lov_data_comment=> '');
 
null;
 
end;
/

prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00001
prompt  ...PAGE 1: Report Page
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 1,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Report Page',
  p_step_title=> 'Report Page',
  p_step_sub_title => 'Report Page',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20130829072241',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>1,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'             "ID",'||chr(10)||
'             "KEY",'||chr(10)||
'             "OBJECT_TYPE",'||chr(10)||
'             "SUBTYPE",'||chr(10)||
'             "REGISTERED_APPLICATION",'||chr(10)||
'             "OBJECT_NAME",'||chr(10)||
'             "SCHEMA",'||chr(10)||
'             "SUB_ITEM__NAVIGATION_PATH",'||chr(10)||
'             "NOTES_DESCRIPTION",'||chr(10)||
'             "BP_REF",'||chr(10)||
'             "BP_DESCRIPTION",'||chr(10)||
'             "RUN_METHOD",'||chr(10)||
'             "ASSESSMENT",'||chr(10)||
'             "RELATED_OBJEC';

s:=s||'TS",'||chr(10)||
'             "CUSTOMISATIONNUMBER",'||chr(10)||
'             "DATE_ADDED",'||chr(10)||
'             "ADDED_BY_WHOM",'||chr(10)||
'             "R12_KEEP_YN"'||chr(10)||
' from   "XX_CUST_OBJECTS" '||chr(10)||
' where CUSTOMISATIONNUMBER = :P1_CUSTOMISATIONNNUMBER;';

wwv_flow_api.create_page_plug (
  p_id=> 80141708584329322 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Customisation Objects',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> 'Unable to show report.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select '||chr(10)||
'             "ID",'||chr(10)||
'             "KEY",'||chr(10)||
'             "OBJECT_TYPE",'||chr(10)||
'             "SUBTYPE",'||chr(10)||
'             "REGISTERED_APPLICATION",'||chr(10)||
'             "OBJECT_NAME",'||chr(10)||
'             "SCHEMA",'||chr(10)||
'             "SUB_ITEM__NAVIGATION_PATH",'||chr(10)||
'             "NOTES_DESCRIPTION",'||chr(10)||
'             "BP_REF",'||chr(10)||
'             "BP_DESCRIPTION",'||chr(10)||
'             "RUN_METHOD",'||chr(10)||
'             "ASSESSMENT",'||chr(10)||
'             "RELATED_OBJEC';

a1:=a1||'TS",'||chr(10)||
'             "CUSTOMISATIONNUMBER",'||chr(10)||
'             "DATE_ADDED",'||chr(10)||
'             "ADDED_BY_WHOM",'||chr(10)||
'             "R12_KEEP_YN"'||chr(10)||
' from   "XX_CUST_OBJECTS" '||chr(10)||
' where CUSTOMISATIONNUMBER = :P1_CUSTOMISATIONNNUMBER;';

wwv_flow_api.create_worksheet(
  p_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 1,
  p_region_id => 80141708584329322+wwv_flow_api.g_id_offset,
  p_name => 'Customisation Objects',
  p_folder_id => null, 
  p_alias => '',
  p_report_id_item => '',
  p_max_row_count => '10000',
  p_max_row_count_message => 'This query returns more than 10,000 rows, please filter your data to ensure complete results.',
  p_no_data_found_message => 'No data found.',
  p_max_rows_per_page    => '',
  p_search_button_label  => '',
  p_page_items_to_submit => '',
  p_sort_asc_image       => '',
  p_sort_asc_image_attr  => '',
  p_sort_desc_image      => '',
  p_sort_desc_image_attr => '',
  p_sql_query => a1,
  p_status                    =>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving       =>'Y',
  p_allow_report_categories   =>'Y',
  p_show_nulls_as             =>'-',
  p_pagination_type           =>'ROWS_X_TO_Y',
  p_pagination_display_pos    =>'BOTTOM_RIGHT',
  p_show_finder_drop_down     =>'Y',
  p_show_display_row_count    =>'Y',
  p_show_search_bar           =>'Y',
  p_show_search_textbox       =>'Y',
  p_show_actions_menu         =>'Y',
  p_report_list_mode          =>'TABS',
  p_show_detail_link          =>'C',
  p_show_select_columns       =>'Y',
  p_show_filter               =>'Y',
  p_show_sort                 =>'Y',
  p_show_control_break        =>'Y',
  p_show_highlight            =>'Y',
  p_show_computation          =>'Y',
  p_show_aggregate            =>'Y',
  p_show_chart                =>'Y',
  p_show_calendar             =>'Y',
  p_show_flashback            =>'Y',
  p_show_reset                =>'Y',
  p_show_download             =>'Y',
  p_show_help            =>'Y',
  p_download_formats          =>'CSV',
  p_detail_link              =>'f?p=&APP_ID.:3:#APP_SESSION#::::P3_ID:#ID#',
  p_detail_link_text         =>'<img src="#IMAGE_PREFIX#themes/theme_20/ed-item.gif" alt="Edit" />',
  p_allow_exclude_null_values =>'Y',
  p_allow_hide_extra_columns  =>'Y',
  p_owner                     =>'POULTD10');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142019385329351+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ID',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'Id',
  p_report_label           =>'Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142127412329360+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'KEY',
  p_display_order          =>2,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'B',
  p_column_label           =>'Key',
  p_report_label           =>'Key',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142223865329360+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'OBJECT_TYPE',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'Object Type',
  p_report_label           =>'Object Type',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142313239329360+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SUBTYPE',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Subtype',
  p_report_label           =>'Subtype',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142404351329361+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'REGISTERED_APPLICATION',
  p_display_order          =>5,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'E',
  p_column_label           =>'Registered Application',
  p_report_label           =>'Registered Application',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142501007329361+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'OBJECT_NAME',
  p_display_order          =>6,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'F',
  p_column_label           =>'Object Name',
  p_report_label           =>'Object Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142600083329361+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SCHEMA',
  p_display_order          =>7,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'G',
  p_column_label           =>'Schema',
  p_report_label           =>'Schema',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142732606329361+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SUB_ITEM__NAVIGATION_PATH',
  p_display_order          =>8,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'H',
  p_column_label           =>'Sub Item  Navigation Path',
  p_report_label           =>'Sub Item  Navigation Path',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142825473329362+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NOTES_DESCRIPTION',
  p_display_order          =>9,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'I',
  p_column_label           =>'Notes Description',
  p_report_label           =>'Notes Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80142922199329362+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'BP_REF',
  p_display_order          =>10,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'J',
  p_column_label           =>'Bp Ref',
  p_report_label           =>'Bp Ref',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80143005910329362+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'BP_DESCRIPTION',
  p_display_order          =>11,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'K',
  p_column_label           =>'Bp Description',
  p_report_label           =>'Bp Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80143123388329363+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'RUN_METHOD',
  p_display_order          =>12,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'L',
  p_column_label           =>'Run Method',
  p_report_label           =>'Run Method',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80143220570329363+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ASSESSMENT',
  p_display_order          =>13,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'M',
  p_column_label           =>'Assessment',
  p_report_label           =>'Assessment',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80143310622329363+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'RELATED_OBJECTS',
  p_display_order          =>14,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'N',
  p_column_label           =>'Related Objects',
  p_report_label           =>'Related Objects',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80143407688329363+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUSTOMISATIONNUMBER',
  p_display_order          =>15,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'O',
  p_column_label           =>'Customisationnumber',
  p_report_label           =>'Customisationnumber',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80143612917329364+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ADDED_BY_WHOM',
  p_display_order          =>17,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'Q',
  p_column_label           =>'Added By Whom',
  p_report_label           =>'Added By Whom',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 80143702757329364+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'R12_KEEP_YN',
  p_display_order          =>18,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'R',
  p_column_label           =>'R12 Keep Yn',
  p_report_label           =>'R12 Keep Yn',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83962413605437356+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DATE_ADDED',
  p_display_order          =>19,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'S',
  p_column_label           =>'Date Added',
  p_report_label           =>'Date Added',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_rpt(
  p_id => 80162401995334212+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_worksheet_id => 80141928197329323+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>'ID:KEY:OBJECT_TYPE:SUBTYPE:REGISTERED_APPLICATION:OBJECT_NAME:SCHEMA:SUB_ITEM__NAVIGATION_PATH:NOTES_DESCRIPTION:BP_REF:BP_DESCRIPTION:RUN_METHOD:ASSESSMENT:RELATED_OBJECTS:CUSTOMISATIONNUMBER:DATE_ADDED:ADDED_BY_WHOM:R12_KEEP_YN',
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 80160900630329452 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'BreadCrumbs',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 80143904768329367 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 10,
  p_button_plug_id => 80141708584329322+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=101:2:&SESSION.::NO:2',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82914906065162407 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 20,
  p_button_plug_id => 80141708584329322+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>82915210484162408 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>82914906065162407+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>83961418884419975 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_CUSTOMISATIONNNUMBER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 80141708584329322+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Customisationn number',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: Insert Form
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 2,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Insert Form',
  p_step_title=> 'Insert Form',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20131127182400',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>2,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 80144521564329371 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Customisation Object',
  p_region_name=>'',
  p_plug_template=> 80122332090329041+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> 'Unable to display page region.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 80161120200329453 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'BreadCrumbs 2',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 80144719509329372 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 80144803469329372 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 20,
  p_button_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>80145202392329374 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>80144803469329372+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80145314524329391 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Id',
  p_source=>'ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80136115883329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80145709224329397 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_KEY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Key',
  p_source=>'KEY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80145915882329397 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_OBJECT_TYPE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Object Type',
  p_source=>'OBJECT_TYPE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'OBJECT TYPE',
  p_lov => '.'||to_char(81591904531639743 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80146131107329397 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_SUBTYPE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Subtype',
  p_source=>'SUBTYPE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80146323628329397 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_REGISTERED_APPLICATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Registered Application',
  p_source=>'REGISTERED_APPLICATION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80146526561329398 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_OBJECT_NAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Object Name',
  p_source=>'OBJECT_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 60,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80146713743329398 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_SCHEMA',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Schema',
  p_source=>'SCHEMA',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80146907855329398 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_SUB_ITEM__NAVIGATION_PATH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 8,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Sub Item  Navigation Path',
  p_source=>'SUB_ITEM__NAVIGATION_PATH',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80147126270329398 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_NOTES_DESCRIPTION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 9,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Notes Description',
  p_source=>'NOTES_DESCRIPTION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80147304705329399 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_BP_REF',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Bp Ref',
  p_source=>'BP_REF',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80147522220329399 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_BP_DESCRIPTION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 11,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Bp Description',
  p_source=>'BP_DESCRIPTION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80147720220329399 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_RUN_METHOD',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Run Method',
  p_source=>'RUN_METHOD',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80147902338329399 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_ASSESSMENT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 13,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Assessment',
  p_source=>'ASSESSMENT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80148130727329400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_RELATED_OBJECTS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 14,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Related Objects',
  p_source=>'RELATED_OBJECTS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80148308004329400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_CUSTOMISATIONNUMBER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Customisation number',
  p_source=>'CUSTOMISATIONNUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'CUSTOMISATION LIST',
  p_lov => 'select customisation_number||'' - ''||name d, cust_list_id r'||chr(10)||
'from   xx_cust_list'||chr(10)||
'order by r',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-',
  p_lov_null_value=> '',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80148508898329400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_DATE_ADDED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 16,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Date Added',
  p_source=>'DATE_ADDED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_RR',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80148715131329400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_ADDED_BY_WHOM',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 17,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Added By Whom',
  p_source=>'ADDED_BY_WHOM',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80148926207329401 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_R12_KEEP_YN',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 18,
  p_item_plug_id => 80144521564329371+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'R12 Keep Yn',
  p_source=>'R12_KEEP_YN',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_lov => 'STATIC2:Yes;Y,No;N',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'-',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 80145610535329394 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_validation_name => 'P2_ID must be number',
  p_validation_sequence=> 1,
  p_validation => 'P2_ID',
  p_validation_type => 'ITEM_IS_NUMERIC',
  p_error_message => 'Id must be number.',
  p_associated_item=> 80145314524329391 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:XX_CUST_OBJECTS:P2_ID:ID|I';

wwv_flow_api.create_page_process(
  p_id     => 80149223843329401 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of XX_CUST_OBJECTS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table XX_CUST_OBJECTS.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00003
prompt  ...PAGE 3: Update Form
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 3,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Update Form',
  p_step_title=> 'Update Form',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20131120174507',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>3,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>3,p_text=>ph);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 80150515451329406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Customisation Object',
  p_region_name=>'',
  p_plug_template=> 80122332090329041+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 80161301439329453 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'BreadCrumbs 3',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 80156113273329427 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 40,
  p_button_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_button_name    => 'GET_PREVIOUS_ID',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> '&lt; Previous',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')',
  p_button_condition=> 'P3_ID_PREV',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 80156009115329427 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 50,
  p_button_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_button_name    => 'GET_NEXT_ID',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Next &gt;',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:htmldb_goSubmit(''GET_NEXT_ID'')',
  p_button_condition=> 'P3_ID_NEXT',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 80150730476329406 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 10,
  p_button_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 80150902014329406 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 30,
  p_button_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 80150826256329406 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 20,
  p_button_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 83941717666715268 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 60,
  p_button_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_button_name    => 'DEPENDENCIES',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Dependencies',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>83942003804715301 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_REFERENCED_OWNER,P7_REFERENCED_NAME:&P3_SCHEMA.,&P3_OBJECT_NAME.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>83941717666715268+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>80151911778329417 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 20,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>80159612495329443 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&FLOW_ID.:3:&SESSION.::&DEBUG.::P3_ID:&P3_ID_NEXT.',
  p_branch_point=> 'BEFORE_COMPUTATION',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>80156009115329427+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'This button is needed for Get Next or Previous Primary Key Value process.');
 
wwv_flow_api.create_page_branch(
  p_id=>80159831539329443 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&FLOW_ID.:3:&SESSION.::&DEBUG.::P3_ID:&P3_ID_PREV.',
  p_branch_point=> 'BEFORE_COMPUTATION',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>80156113273329427+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'This button is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80152128074329417 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Id',
  p_source=>'ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80152215174329423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_KEY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Key',
  p_source=>'KEY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80152430525329423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_OBJECT_TYPE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Object Type',
  p_source=>'OBJECT_TYPE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'OBJECT TYPE',
  p_lov => '.'||to_char(81591904531639743 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80152615847329423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_SUBTYPE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Subtype',
  p_source=>'SUBTYPE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80152800663329423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_REGISTERED_APPLICATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Registered Application',
  p_source=>'REGISTERED_APPLICATION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80153001985329424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_OBJECT_NAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Object Name',
  p_source=>'OBJECT_NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80153207375329424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_SCHEMA',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Schema',
  p_source=>'SCHEMA',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80153406806329424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_SUB_ITEM__NAVIGATION_PATH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 8,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Sub Item  Navigation Path',
  p_source=>'SUB_ITEM__NAVIGATION_PATH',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80153603810329424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_NOTES_DESCRIPTION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 9,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Notes Description',
  p_source=>'NOTES_DESCRIPTION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA-AUTO-HEIGHT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 5,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80153815336329425 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_BP_REF',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Bp Ref',
  p_source=>'BP_REF',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80154020804329425 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_BP_DESCRIPTION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 11,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bp Description',
  p_source=>'BP_DESCRIPTION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80154201635329425 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_RUN_METHOD',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Run Method',
  p_source=>'RUN_METHOD',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80154404161329425 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ASSESSMENT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 13,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Assessment',
  p_source=>'ASSESSMENT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 5,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80154602000329426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_RELATED_OBJECTS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 14,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Related Objects',
  p_source=>'RELATED_OBJECTS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 5,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80154812614329426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_CUSTOMISATIONNUMBER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Customisationnumber',
  p_source=>'CUSTOMISATIONNUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_lov => 'select customisation_number||'' - ''||name d, customisation_number r'||chr(10)||
'from   xx_cust_list'||chr(10)||
'order by r',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80155010743329426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_DATE_ADDED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 16,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Date Added',
  p_source=>'DATE_ADDED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80155204395329426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ADDED_BY_WHOM',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 17,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Added By Whom',
  p_source=>'ADDED_BY_WHOM',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 30,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80155406665329426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_R12_KEEP_YN',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 18,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'R12 Keep Yn',
  p_source=>'R12_KEEP_YN',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'YES_NO',
  p_lov => '.'||to_char(83559915419733733 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_tag_attributes  => 'onchange="htmldb_item_change(this)"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80158620119329431 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ID_NEXT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 28,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'P3_ID_NEXT',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => 'This item is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80158818978329432 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ID_PREV',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 38,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'P3_ID_PREV',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => 'This item is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80159004277329433 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ID_COUNT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 48,
  p_item_plug_id => 80150515451329406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'DISPLAY_AND_SAVE',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'class="fielddata"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => 'This item is needed for Get Next or Previous Primary Key Value process.');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:XX_CUST_OBJECTS:P3_ID:ID';

wwv_flow_api.create_page_process(
  p_id     => 80155731255329427 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from XX_CUST_OBJECTS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:XX_CUST_OBJECTS:ID::ID::P3_ID:P3_ID_NEXT:P3_ID_PREV::::P3_ID_COUNT:';

wwv_flow_api.create_page_process(
  p_id     => 80159427907329443 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 11,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'GET_NEXT_OR_PREV_PK',
  p_process_name=> 'Get Next or Previous Primary Key Value',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to run Get Next or Previous Primary Key Value process.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:XX_CUST_OBJECTS:P3_ID:ID|UD';

wwv_flow_api.create_page_process(
  p_id     => 80155928007329427 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of XX_CUST_OBJECTS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table XX_CUST_OBJECTS.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00004
prompt  ...PAGE 4: Success Page
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 4,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Success Page',
  p_step_title=> 'Success Page',
  p_step_sub_title => 'Success Page',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20130730154626',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>4,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p/>'||chr(10)||
'<table>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">'||chr(10)||
'<img src="#IMAGE_PREFIX#themes/theme_20/Fndokay1.gif" alt="success" />'||chr(10)||
'</td>'||chr(10)||
'<td class="fielddata" valign="bottom">'||chr(10)||
'The data has been inserted successfully.'||chr(10)||
'<p/>'||chr(10)||
'<table cellspacing="10" cellpadding="10">'||chr(10)||
'<tr>'||chr(10)||
'<td align="center">'||chr(10)||
'<a href="f?p=101:2:&SESSION.:::2" class="instructiontext">'||chr(10)||
'<img src="#IMAGE_PREFIX#menu/add_record_64.gif" border=0 width="64" height="';

s:=s||'64" alt="Insert Another" title="Insert Another" /><br>'||chr(10)||
'Insert Another</a>'||chr(10)||
'</td>'||chr(10)||
'<td align="center">'||chr(10)||
'<a href="f?p=101:1:&SESSION.:::1" class="instructiontext">'||chr(10)||
'<img src="#IMAGE_PREFIX#menu/search_64.gif" border=0 width="64" height="64" alt="View Report" title="View Report" /><br>'||chr(10)||
'View Report</a>'||chr(10)||
'</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<p/>';

wwv_flow_api.create_page_plug (
  p_id=> 80149908448329403 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Success',
  p_region_name=>'',
  p_plug_template=> 80125009553329044+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> 'Unable to display page region.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 80161532064329453 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'BreadCrumbs 4',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00005
prompt  ...PAGE 5: Customisation Listing
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 5,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Customisation Listing',
  p_step_title=> 'Customisation Listing',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20131127185407',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "CUST_LIST_ID", '||chr(10)||
'"NAME",'||chr(10)||
'"DESCRIPTION",'||chr(10)||
'"APPLICATION_ID",'||chr(10)||
'"ASSESSMENT",'||chr(10)||
'"USED",'||chr(10)||
'"R12_OBSOLETE",'||chr(10)||
'"R12_MIGRATE",'||chr(10)||
'"TEAM_OWNER",'||chr(10)||
'"CUSTOMISATION_NUMBER"'||chr(10)||
'from "#OWNER#"."XX_CUST_LIST" '||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_page_plug (
  p_id=> 82846500198308369 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Customisation Listing',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> 'Unable to show report.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select "CUST_LIST_ID", '||chr(10)||
'"NAME",'||chr(10)||
'"DESCRIPTION",'||chr(10)||
'"APPLICATION_ID",'||chr(10)||
'"ASSESSMENT",'||chr(10)||
'"USED",'||chr(10)||
'"R12_OBSOLETE",'||chr(10)||
'"R12_MIGRATE",'||chr(10)||
'"TEAM_OWNER",'||chr(10)||
'"CUSTOMISATION_NUMBER"'||chr(10)||
'from "#OWNER#"."XX_CUST_LIST" '||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_worksheet(
  p_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 5,
  p_region_id => 82846500198308369+wwv_flow_api.g_id_offset,
  p_name => 'Customisation Listing',
  p_folder_id => null, 
  p_alias => '',
  p_report_id_item => '',
  p_max_row_count => '10000',
  p_max_row_count_message => 'This query returns more than 10,000 rows, please filter your data to ensure complete results.',
  p_no_data_found_message => 'No data found.',
  p_max_rows_per_page    => '',
  p_search_button_label  => '',
  p_page_items_to_submit => '',
  p_sort_asc_image       => '',
  p_sort_asc_image_attr  => '',
  p_sort_desc_image      => '',
  p_sort_desc_image_attr => '',
  p_sql_query => a1,
  p_status                    =>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving       =>'Y',
  p_allow_report_categories   =>'N',
  p_show_nulls_as             =>'-',
  p_pagination_type           =>'ROWS_X_TO_Y',
  p_pagination_display_pos    =>'BOTTOM_RIGHT',
  p_show_finder_drop_down     =>'Y',
  p_show_display_row_count    =>'Y',
  p_show_search_bar           =>'Y',
  p_show_search_textbox       =>'Y',
  p_show_actions_menu         =>'Y',
  p_report_list_mode          =>'TABS',
  p_show_detail_link          =>'C',
  p_show_select_columns       =>'Y',
  p_show_filter               =>'Y',
  p_show_sort                 =>'Y',
  p_show_control_break        =>'Y',
  p_show_highlight            =>'Y',
  p_show_computation          =>'Y',
  p_show_aggregate            =>'Y',
  p_show_chart                =>'Y',
  p_show_calendar             =>'N',
  p_show_flashback            =>'Y',
  p_show_reset                =>'Y',
  p_show_download             =>'Y',
  p_show_help            =>'Y',
  p_download_formats          =>'CSV',
  p_detail_link              =>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_CUST_LIST_ID:#CUST_LIST_ID#',
  p_detail_link_text         =>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">',
  p_allow_exclude_null_values =>'N',
  p_allow_hide_extra_columns  =>'N',
  p_owner                     =>'POULTD10');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847710335308392+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUSTOMISATION_NUMBER',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'J',
  p_column_label           =>'Customisation Number',
  p_report_label           =>'Customisation Number',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82846831792308384+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUST_LIST_ID',
  p_display_order          =>2,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'Cust List Id',
  p_report_label           =>'Cust List Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82846918113308389+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NAME',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'B',
  p_column_label           =>'Name',
  p_report_label           =>'Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847017173308389+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DESCRIPTION',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'Description',
  p_report_label           =>'Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847126905308389+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'APPLICATION_ID',
  p_display_order          =>5,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Application Id',
  p_report_label           =>'Application Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847214839308390+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ASSESSMENT',
  p_display_order          =>6,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'E',
  p_column_label           =>'Assessment',
  p_report_label           =>'Assessment',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847305047308390+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'USED',
  p_display_order          =>7,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'F',
  p_column_label           =>'Used',
  p_report_label           =>'Used',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847402799308390+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'R12_OBSOLETE',
  p_display_order          =>8,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'G',
  p_column_label           =>'R12 Obsolete',
  p_report_label           =>'R12 Obsolete',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847507217308391+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'R12_MIGRATE',
  p_display_order          =>9,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'H',
  p_column_label           =>'R12 Migrate',
  p_report_label           =>'R12 Migrate',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 82847614186308391+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'TEAM_OWNER',
  p_display_order          =>10,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'I',
  p_column_label           =>'Team Owner',
  p_report_label           =>'Team Owner',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_rpt(
  p_id => 82848401199309641+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_worksheet_id => 82846712039308369+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_status                  =>'PRIVATE',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>'CUSTOMISATION_NUMBER:NAME:DESCRIPTION:APPLICATION_ID:ASSESSMENT:USED:R12_OBSOLETE:R12_MIGRATE:TEAM_OWNER',
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 97282214267047600 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Breadcrumb',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 82847919489308392 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 82846500198308369+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82913004202152497 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 40,
  p_button_plug_id => 82846500198308369+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00006
prompt  ...PAGE 6: Customisation Listing
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 6,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Customisation Listing',
  p_step_title=> 'Customisation Listing',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20140305121514',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>6,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>6,p_text=>ph);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 82841912671308279 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 6,
  p_plug_name=> 'Customisation Listing',
  p_region_name=>'',
  p_plug_template=> 80122332090329041+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 82842510553308302 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 10,
  p_button_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82842320902308297 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 20,
  p_button_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P6_CUST_LIST_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82842222229308297 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 30,
  p_button_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_condition=> 'P6_CUST_LIST_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82842103097308297 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 40,
  p_button_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_condition=> 'P6_CUST_LIST_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 83948119238829275 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 50,
  p_button_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_button_name    => 'OBJECTS',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Database Objects',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 109250005024717054 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 60,
  p_button_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_button_name    => 'CONCURRENT_PROGRAMS',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Concurrent Programs',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_CUST_ID:&P6_CUST_LIST_ID.',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>83948420095829276 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P1_CUSTOMISATIONNNUMBER:&P6_CUSTOMISATION_NUMBER.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>83948119238829275+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>109250323541717078 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_action=> 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_CUST_ID:&P10_CUST_ID.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>109250005024717054+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>82843115481308306 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_action=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 20,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82843328131308312 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_CUST_LIST_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 26,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Cust List Id',
  p_source=>'CUST_LIST_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN_PROTECTED',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82843514858308340 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_NAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 22,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Name',
  p_source=>'NAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 200,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82843718661308341 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_DESCRIPTION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 23,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Description',
  p_source=>'DESCRIPTION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 1000,
  p_cHeight=> 4,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82843924613308342 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_APPLICATION_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 27,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Application',
  p_source=>'APPLICATION_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82844116742308342 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_ASSESSMENT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 24,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Assessment',
  p_source=>'ASSESSMENT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 2000,
  p_cHeight=> 4,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82844312064308342 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_USED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 28,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Used',
  p_source=>'USED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'YES_NO',
  p_lov => '.'||to_char(83559915419733733 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 20,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82844520273308342 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_R12_OBSOLETE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 31,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'R12 Obsolete',
  p_source=>'R12_OBSOLETE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'YES_NO',
  p_lov => '.'||to_char(83559915419733733 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 20,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82844728642308343 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_R12_MIGRATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 29,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'R12 Migrate',
  p_source=>'R12_MIGRATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'YES_NO',
  p_lov => '.'||to_char(83559915419733733 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 32,
  p_cMaxlength=> 20,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82844911780308343 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_TEAM_OWNER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 25,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Team Owner',
  p_source=>'TEAM_OWNER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 20,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82845117021308343 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_CUSTOMISATION_NUMBER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 21,
  p_item_plug_id => 82841912671308279+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Customisation Number',
  p_source=>'CUSTOMISATION_NUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:XX_CUST_LIST:P6_CUST_LIST_ID:CUST_LIST_ID';

wwv_flow_api.create_page_process(
  p_id     => 82845405991308346 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from XX_CUST_LIST',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select XX_CUST_LIST_S1.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P6_CUST_LIST_ID := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 82845613182308351 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>82842103097308297 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:XX_CUST_LIST:P6_CUST_LIST_ID:CUST_LIST_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 82845801530308351 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of XX_CUST_LIST',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table XX_CUST_LIST.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'6';

wwv_flow_api.create_page_process(
  p_id     => 82846009554308352 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>82842320902308297 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 6
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00007
prompt  ...PAGE 7: Dependencies
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 7,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Dependencies',
  p_step_title=> 'Dependencies',
  p_step_sub_title => 'Dependencies',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20131029122301',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>7,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT *'||chr(10)||
'FROM all_dependencies'||chr(10)||
'WHERE referenced_owner = upper(:P7_REFERENCED_OWNER)'||chr(10)||
'and referenced_name = upper(:P7_REFERENCED_NAME)';

wwv_flow_api.create_report_region (
  p_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 7,
  p_name=> 'Object Dependencies',
  p_region_name=>'',
  p_template=> 80125009553329044+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 80133707980329065+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'QUERY_COLUMNS',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found=> 'No data found.',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max=> '500',
  p_csv_output=> 'N',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83940431703700997 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'OWNER',
  p_column_display_sequence=> 1,
  p_column_heading=> 'OWNER',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>1,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83940508109700999 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'NAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'NAME',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83940618908700999 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'TYPE',
  p_column_display_sequence=> 3,
  p_column_heading=> 'TYPE',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83940717517700999 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'REFERENCED_OWNER',
  p_column_display_sequence=> 4,
  p_column_heading=> 'REFERENCED_OWNER',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83940831131700999 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'REFERENCED_NAME',
  p_column_display_sequence=> 5,
  p_column_heading=> 'REFERENCED_NAME',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83940921577700999 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'REFERENCED_TYPE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'REFERENCED_TYPE',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83941020509700999 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'REFERENCED_LINK_NAME',
  p_column_display_sequence=> 7,
  p_column_heading=> 'REFERENCED_LINK_NAME',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 83941125292700999 + wwv_flow_api.g_id_offset,
  p_region_id=> 83940100445700969 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'DEPENDENCY_TYPE',
  p_column_display_sequence=> 8,
  p_column_heading=> 'DEPENDENCY_TYPE',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 83944809626807625 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 7,
  p_button_sequence=> 10,
  p_button_plug_id => 83940100445700969+wwv_flow_api.g_id_offset,
  p_button_name    => 'FINISH',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Finish',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>83945101357807625 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_branch_action=> 'f?p=&FLOW_ID.:3:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>83944809626807625+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>83941311994704254 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_name=>'P7_REFERENCED_OWNER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 83940100445700969+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Referenced Owner',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>83941517535705801 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_name=>'P7_REFERENCED_NAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 83940100445700969+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Referenced Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 7
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00008
prompt  ...PAGE 8: Concurrent Programs
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 8,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Concurrent Programs',
  p_step_title=> 'Concurrent Programs',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20140305130820',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>8,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT DISTINCT xccp.cust_id,xccp.cust_conc_prog_id,fcp.concurrent_program_id,fat.application_name,'||chr(10)||
'  fcptl.user_concurrent_program_name,'||chr(10)||
'  fcptl.description,'||chr(10)||
'  fcp.concurrent_program_name,'||chr(10)||
'  fcp.enabled_flag,'||chr(10)||
'  fe.execution_file_name,'||chr(10)||
'  flv.meaning execution_method,'||chr(10)||
'  xcl.customisation_number,'||chr(10)||
'  xccp.r12_keep,'||chr(10)||
'  xccp.assessment'||chr(10)||
'FROM fnd_executables fe ,'||chr(10)||
'  fnd_concurrent_programs fcp,'||chr(10)||
'  fnd_concur';

s:=s||'rent_programs_tl fcptl ,'||chr(10)||
'  fnd_application fa,'||chr(10)||
'  fnd_lookup_values flv,'||chr(10)||
'  fnd_application_tl fat,'||chr(10)||
'  xx_cust_conc_prog xccp,'||chr(10)||
'xx_cust_list xcl'||chr(10)||
'WHERE fcp.concurrent_program_id=fcptl.concurrent_program_id'||chr(10)||
'  --and execution_file_name like ''XMODE%'''||chr(10)||
'AND fe.executable_id        =fcp.executable_id'||chr(10)||
'AND fcp.application_id      =fa.application_id'||chr(10)||
'AND fa.application_id       =fat.application_id'||chr(10)||
'AND fe.executio';

s:=s||'n_method_code=flv.lookup_code'||chr(10)||
'AND fat.language            =''US'''||chr(10)||
'AND lookup_type             = ''CP_EXECUTION_METHOD_CODE'''||chr(10)||
'and xccp.concurrent_program_id = fcp.concurrent_program_id'||chr(10)||
'and xcl.cust_list_id = xccp.cust_id'||chr(10)||
'and xccp.cust_id = nvl(:P8_CUST_ID,xccp.cust_id)'||chr(10)||
'  ';

wwv_flow_api.create_page_plug (
  p_id=> 86090519767463819 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Concurrent Programs',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> 'Unable to show report.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT DISTINCT xccp.cust_id,xccp.cust_conc_prog_id,fcp.concurrent_program_id,fat.application_name,'||chr(10)||
'  fcptl.user_concurrent_program_name,'||chr(10)||
'  fcptl.description,'||chr(10)||
'  fcp.concurrent_program_name,'||chr(10)||
'  fcp.enabled_flag,'||chr(10)||
'  fe.execution_file_name,'||chr(10)||
'  flv.meaning execution_method,'||chr(10)||
'  xcl.customisation_number,'||chr(10)||
'  xccp.r12_keep,'||chr(10)||
'  xccp.assessment'||chr(10)||
'FROM fnd_executables fe ,'||chr(10)||
'  fnd_concurrent_programs fcp,'||chr(10)||
'  fnd_concur';

a1:=a1||'rent_programs_tl fcptl ,'||chr(10)||
'  fnd_application fa,'||chr(10)||
'  fnd_lookup_values flv,'||chr(10)||
'  fnd_application_tl fat,'||chr(10)||
'  xx_cust_conc_prog xccp,'||chr(10)||
'xx_cust_list xcl'||chr(10)||
'WHERE fcp.concurrent_program_id=fcptl.concurrent_program_id'||chr(10)||
'  --and execution_file_name like ''XMODE%'''||chr(10)||
'AND fe.executable_id        =fcp.executable_id'||chr(10)||
'AND fcp.application_id      =fa.application_id'||chr(10)||
'AND fa.application_id       =fat.application_id'||chr(10)||
'AND fe.executio';

a1:=a1||'n_method_code=flv.lookup_code'||chr(10)||
'AND fat.language            =''US'''||chr(10)||
'AND lookup_type             = ''CP_EXECUTION_METHOD_CODE'''||chr(10)||
'and xccp.concurrent_program_id = fcp.concurrent_program_id'||chr(10)||
'and xcl.cust_list_id = xccp.cust_id'||chr(10)||
'and xccp.cust_id = nvl(:P8_CUST_ID,xccp.cust_id)'||chr(10)||
'  ';

wwv_flow_api.create_worksheet(
  p_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 8,
  p_region_id => 86090519767463819+wwv_flow_api.g_id_offset,
  p_name => 'Concurrent Programs',
  p_folder_id => null, 
  p_alias => '',
  p_report_id_item => '',
  p_max_row_count => '10000',
  p_max_row_count_message => 'This query returns more than 10,000 rows, please filter your data to ensure complete results.',
  p_no_data_found_message => 'No data found.',
  p_max_rows_per_page    => '',
  p_search_button_label  => '',
  p_page_items_to_submit => '',
  p_sort_asc_image       => '',
  p_sort_asc_image_attr  => '',
  p_sort_desc_image      => '',
  p_sort_desc_image_attr => '',
  p_sql_query => a1,
  p_status                    =>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving       =>'Y',
  p_allow_report_categories   =>'Y',
  p_show_nulls_as             =>'-',
  p_pagination_type           =>'ROWS_X_TO_Y',
  p_pagination_display_pos    =>'BOTTOM_RIGHT',
  p_show_finder_drop_down     =>'Y',
  p_show_display_row_count    =>'Y',
  p_show_search_bar           =>'Y',
  p_show_search_textbox       =>'Y',
  p_show_actions_menu         =>'Y',
  p_report_list_mode          =>'TABS',
  p_show_detail_link          =>'C',
  p_show_select_columns       =>'Y',
  p_show_filter               =>'Y',
  p_show_sort                 =>'Y',
  p_show_control_break        =>'Y',
  p_show_highlight            =>'Y',
  p_show_computation          =>'Y',
  p_show_aggregate            =>'Y',
  p_show_chart                =>'Y',
  p_show_calendar             =>'Y',
  p_show_flashback            =>'Y',
  p_show_reset                =>'Y',
  p_show_download             =>'Y',
  p_show_help            =>'Y',
  p_download_formats          =>'CSV',
  p_detail_link              =>'f?p=&APP_ID.:10:&APP_SESSION.::::P10_CUST_CONC_PROG_ID:#CUST_CONC_PROG_ID#',
  p_detail_link_text         =>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">',
  p_allow_exclude_null_values =>'Y',
  p_allow_hide_extra_columns  =>'Y',
  p_owner                     =>'POULTD10');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092128768492545+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CONCURRENT_PROGRAM_ID',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'Concurrent Program Id',
  p_report_label           =>'Concurrent Program Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092231278492546+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'APPLICATION_NAME',
  p_display_order          =>2,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'B',
  p_column_label           =>'Application Name',
  p_report_label           =>'Application Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092329086492546+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'USER_CONCURRENT_PROGRAM_NAME',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'User Concurrent Program Name',
  p_report_label           =>'User Concurrent Program Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092409232492546+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DESCRIPTION',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Description',
  p_report_label           =>'Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092521283492546+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CONCURRENT_PROGRAM_NAME',
  p_display_order          =>5,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'E',
  p_column_label           =>'Concurrent Program Name',
  p_report_label           =>'Concurrent Program Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092623371492547+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ENABLED_FLAG',
  p_display_order          =>6,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'F',
  p_column_label           =>'Enabled Flag',
  p_report_label           =>'Enabled Flag',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092708587492547+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'EXECUTION_FILE_NAME',
  p_display_order          =>7,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'G',
  p_column_label           =>'Execution File Name',
  p_report_label           =>'Execution File Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092830352492547+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'EXECUTION_METHOD',
  p_display_order          =>8,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'H',
  p_column_label           =>'Execution Method',
  p_report_label           =>'Execution Method',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86092915122492548+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUSTOMISATION_NUMBER',
  p_display_order          =>9,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'I',
  p_column_label           =>'Customisation Number',
  p_report_label           =>'Customisation Number',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86093016253492548+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'R12_KEEP',
  p_display_order          =>10,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'J',
  p_column_label           =>'R12 Keep',
  p_report_label           =>'R12 Keep',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86093105627492548+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ASSESSMENT',
  p_display_order          =>11,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'K',
  p_column_label           =>'Assessment',
  p_report_label           =>'Assessment',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86093317817498846+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUST_ID',
  p_display_order          =>12,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'L',
  p_column_label           =>'Cust Id',
  p_report_label           =>'Cust Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 86093417691498846+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUST_CONC_PROG_ID',
  p_display_order          =>13,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'M',
  p_column_label           =>'Cust Conc Prog Id',
  p_report_label           =>'Cust Conc Prog Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_rpt(
  p_id => 86091228721464161+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_worksheet_id => 86090707400463828+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_status                  =>'PRIVATE',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>'APPLICATION_NAME:USER_CONCURRENT_PROGRAM_NAME:DESCRIPTION:CONCURRENT_PROGRAM_NAME:ENABLED_FLAG:EXECUTION_FILE_NAME:EXECUTION_METHOD:CUSTOMISATION_NUMBER:R12_KEEP:ASSESSMENT',
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 109311717762165385 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Breadcrumb',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 86091116258463870 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 30,
  p_button_plug_id => 86090519767463819+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=101:10:&SESSION.::NO:10',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>109287024688817338 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_CUST_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 86090519767463819+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Cust Id',
  p_source_type=> 'STATIC',
  p_display_as=> 'DISPLAY_ONLY_ESCAPE_SC',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 8
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00009
prompt  ...PAGE 9: Menu
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 9,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Menu',
  p_step_title=> 'Menu',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20130820104757',
  p_page_comment  => '');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 82895030971942636 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'Menu',
  p_region_name=>'',
  p_plug_template=> 80125009553329044+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 82893524607931272 + wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 9
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00010
prompt  ...PAGE 10: Concurrent Program
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 10,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Concurrent Program',
  p_step_title=> 'Concurrent Program',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20140305130558',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>10,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>10,p_text=>ph);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 86087406067463501 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_plug_name=> 'Concurrent Programs',
  p_region_name=>'',
  p_plug_template=> 80122332090329041+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 86087716260463649 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 30,
  p_button_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_condition=> 'P10_CUST_CONC_PROG_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 86088029222463663 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 10,
  p_button_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 86087614041463649 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 40,
  p_button_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_condition=> 'P10_CUST_CONC_PROG_ID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 86087805285463649 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 20,
  p_button_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P10_CUST_CONC_PROG_ID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>86088518179463670 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_branch_action=> 'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>86088704260463711 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_name=>'P10_CUST_CONC_PROG_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 51,
  p_item_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Cust Conc Prog Id',
  p_source=>'CUST_CONC_PROG_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN_PROTECTED',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>86088920467463746 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_name=>'P10_R12_KEEP',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 53,
  p_item_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'R12 Keep',
  p_source=>'R12_KEEP',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'YES_NO',
  p_lov => '.'||to_char(83559915419733733 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 1,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>86089109894463747 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_name=>'P10_ASSESSMENT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 54,
  p_item_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Assessment',
  p_source=>'ASSESSMENT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 500,
  p_cHeight=> 4,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>86096802411532159 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_name=>'P10_CUST_ID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 52,
  p_item_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Customisation number',
  p_source=>'CUST_ID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'CUSTOMISATION LIST',
  p_lov => 'select customisation_number||'' - ''||name d, cust_list_id r'||chr(10)||
'from   xx_cust_list'||chr(10)||
'order by r',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>109309623256138556 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_name=>'P10_PROCESS_NUMBER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 55,
  p_item_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Process Number',
  p_source=>'PROCESS_NUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>109311001354151150 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 10,
  p_name=>'P10_UAT_SCRIPT_NUMBER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 65,
  p_item_plug_id => 86087406067463501+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Uat Script Number',
  p_source=>'UAT_SCRIPT_NUMBER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:XX_CUST_CONC_PROG:P10_CUST_CONC_PROG_ID:CUST_CONC_PROG_ID';

wwv_flow_api.create_page_process(
  p_id     => 86089426078463758 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from XX_CUST_CONC_PROG',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select XX_CUST_CONC_PROG_S1.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P10_CUST_CONC_PROG_ID := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 86089629001463784 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>86087614041463649 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:XX_CUST_CONC_PROG:P10_CUST_CONC_PROG_ID:CUST_CONC_PROG_ID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 86089805708463784 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of XX_CUST_CONC_PROG',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table XX_CUST_CONC_PROG.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'10';

wwv_flow_api.create_page_process(
  p_id     => 86090013659463784 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 10,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>86087805285463649 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 10
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00011
prompt  ...PAGE 11: All Customisation Objects
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 11,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'All Customisation Objects',
  p_step_title=> 'All Customisation Objects',
  p_step_sub_title => 'All Customisation Objects',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20131126171916',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>11,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'             "ID",'||chr(10)||
'             "KEY",'||chr(10)||
'             "OBJECT_TYPE",'||chr(10)||
'             "SUBTYPE",'||chr(10)||
'             "REGISTERED_APPLICATION",'||chr(10)||
'             "OBJECT_NAME",'||chr(10)||
'             "SCHEMA",'||chr(10)||
'             "SUB_ITEM__NAVIGATION_PATH",'||chr(10)||
'             "NOTES_DESCRIPTION",'||chr(10)||
'             "BP_REF",'||chr(10)||
'             "BP_DESCRIPTION",'||chr(10)||
'             "RUN_METHOD",'||chr(10)||
'             "ASSESSMENT",'||chr(10)||
'             "RELATED_OBJEC';

s:=s||'TS",'||chr(10)||
'             "CUSTOMISATIONNUMBER",'||chr(10)||
'             "DATE_ADDED",'||chr(10)||
'             "ADDED_BY_WHOM",'||chr(10)||
'             "R12_KEEP_YN"'||chr(10)||
' from   "XX_CUST_OBJECTS" ;';

wwv_flow_api.create_page_plug (
  p_id=> 83969513330508784 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_plug_name=> 'Customisation Objects',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> 'Unable to show report.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select '||chr(10)||
'             "ID",'||chr(10)||
'             "KEY",'||chr(10)||
'             "OBJECT_TYPE",'||chr(10)||
'             "SUBTYPE",'||chr(10)||
'             "REGISTERED_APPLICATION",'||chr(10)||
'             "OBJECT_NAME",'||chr(10)||
'             "SCHEMA",'||chr(10)||
'             "SUB_ITEM__NAVIGATION_PATH",'||chr(10)||
'             "NOTES_DESCRIPTION",'||chr(10)||
'             "BP_REF",'||chr(10)||
'             "BP_DESCRIPTION",'||chr(10)||
'             "RUN_METHOD",'||chr(10)||
'             "ASSESSMENT",'||chr(10)||
'             "RELATED_OBJEC';

a1:=a1||'TS",'||chr(10)||
'             "CUSTOMISATIONNUMBER",'||chr(10)||
'             "DATE_ADDED",'||chr(10)||
'             "ADDED_BY_WHOM",'||chr(10)||
'             "R12_KEEP_YN"'||chr(10)||
' from   "XX_CUST_OBJECTS" ;';

wwv_flow_api.create_worksheet(
  p_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 11,
  p_region_id => 83969513330508784+wwv_flow_api.g_id_offset,
  p_name => 'Customisation Objects',
  p_folder_id => null, 
  p_alias => '',
  p_report_id_item => '',
  p_max_row_count => '10000',
  p_max_row_count_message => 'This query returns more than 10,000 rows, please filter your data to ensure complete results.',
  p_no_data_found_message => 'No data found.',
  p_max_rows_per_page    => '',
  p_search_button_label  => '',
  p_page_items_to_submit => '',
  p_sort_asc_image       => '',
  p_sort_asc_image_attr  => '',
  p_sort_desc_image      => '',
  p_sort_desc_image_attr => '',
  p_sql_query => a1,
  p_status                    =>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving       =>'Y',
  p_allow_report_categories   =>'Y',
  p_show_nulls_as             =>'-',
  p_pagination_type           =>'ROWS_X_TO_Y',
  p_pagination_display_pos    =>'BOTTOM_RIGHT',
  p_show_finder_drop_down     =>'Y',
  p_show_display_row_count    =>'Y',
  p_show_search_bar           =>'Y',
  p_show_search_textbox       =>'Y',
  p_show_actions_menu         =>'Y',
  p_report_list_mode          =>'TABS',
  p_show_detail_link          =>'C',
  p_show_select_columns       =>'Y',
  p_show_filter               =>'Y',
  p_show_sort                 =>'Y',
  p_show_control_break        =>'Y',
  p_show_highlight            =>'Y',
  p_show_computation          =>'Y',
  p_show_aggregate            =>'Y',
  p_show_chart                =>'Y',
  p_show_calendar             =>'Y',
  p_show_flashback            =>'Y',
  p_show_reset                =>'Y',
  p_show_download             =>'Y',
  p_show_help            =>'Y',
  p_download_formats          =>'CSV',
  p_detail_link              =>'f?p=&APP_ID.:3:#APP_SESSION#::::P3_ID:#ID#',
  p_detail_link_text         =>'<img src="#IMAGE_PREFIX#themes/theme_20/ed-item.gif" alt="Edit" />',
  p_allow_exclude_null_values =>'Y',
  p_allow_hide_extra_columns  =>'Y',
  p_owner                     =>'POULTD10');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83969803215508790+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ID',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'Id',
  p_report_label           =>'Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'HIDDEN',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83969916662508791+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'KEY',
  p_display_order          =>2,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'B',
  p_column_label           =>'Key',
  p_report_label           =>'Key',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970031722508791+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'OBJECT_TYPE',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'Object Type',
  p_report_label           =>'Object Type',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970113261508791+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SUBTYPE',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Subtype',
  p_report_label           =>'Subtype',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970231084508794+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'REGISTERED_APPLICATION',
  p_display_order          =>5,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'E',
  p_column_label           =>'Registered Application',
  p_report_label           =>'Registered Application',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970314950508794+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'OBJECT_NAME',
  p_display_order          =>6,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'F',
  p_column_label           =>'Object Name',
  p_report_label           =>'Object Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970432358508794+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SCHEMA',
  p_display_order          =>7,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'G',
  p_column_label           =>'Schema',
  p_report_label           =>'Schema',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970509336508794+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SUB_ITEM__NAVIGATION_PATH',
  p_display_order          =>8,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'H',
  p_column_label           =>'Sub Item  Navigation Path',
  p_report_label           =>'Sub Item  Navigation Path',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970604864508794+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'NOTES_DESCRIPTION',
  p_display_order          =>9,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'I',
  p_column_label           =>'Notes Description',
  p_report_label           =>'Notes Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970707807508795+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'BP_REF',
  p_display_order          =>10,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'J',
  p_column_label           =>'Bp Ref',
  p_report_label           =>'Bp Ref',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970804048508795+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'BP_DESCRIPTION',
  p_display_order          =>11,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'K',
  p_column_label           =>'Bp Description',
  p_report_label           =>'Bp Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83970914122508795+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'RUN_METHOD',
  p_display_order          =>12,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'L',
  p_column_label           =>'Run Method',
  p_report_label           =>'Run Method',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83971029885508795+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ASSESSMENT',
  p_display_order          =>13,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'M',
  p_column_label           =>'Assessment',
  p_report_label           =>'Assessment',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83971102762508795+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'RELATED_OBJECTS',
  p_display_order          =>14,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'N',
  p_column_label           =>'Related Objects',
  p_report_label           =>'Related Objects',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83971231208508796+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUSTOMISATIONNUMBER',
  p_display_order          =>15,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'O',
  p_column_label           =>'Customisationnumber',
  p_report_label           =>'Customisationnumber',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83971316114508796+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ADDED_BY_WHOM',
  p_display_order          =>17,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'Q',
  p_column_label           =>'Added By Whom',
  p_report_label           =>'Added By Whom',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83971424968508796+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'R12_KEEP_YN',
  p_display_order          =>18,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'R',
  p_column_label           =>'R12 Keep Yn',
  p_report_label           =>'R12 Keep Yn',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 83971520393508796+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DATE_ADDED',
  p_display_order          =>19,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'S',
  p_column_label           =>'Date Added',
  p_report_label           =>'Date Added',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_rpt(
  p_id => 83971608694508797+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_worksheet_id => 83969701921508785+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>'ID:KEY:OBJECT_TYPE:SUBTYPE:REGISTERED_APPLICATION:OBJECT_NAME:SCHEMA:SUB_ITEM__NAVIGATION_PATH:NOTES_DESCRIPTION:BP_REF:BP_DESCRIPTION:RUN_METHOD:ASSESSMENT:RELATED_OBJECTS:CUSTOMISATIONNUMBER:DATE_ADDED:ADDED_BY_WHOM:R12_KEEP_YN',
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 83971703262508799 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_plug_name=> 'BreadCrumbs',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 97062314749840282 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_plug_name=> 'Custom Objects',
  p_region_name=>'',
  p_plug_template=> 80121115180329040+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(80138506238329100 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 80136208169329071+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 83972122807508803 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 10,
  p_button_plug_id => 83969513330508784+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=101:2:&SESSION.::NO:2',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 83971919817508800 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 20,
  p_button_plug_id => 83969513330508784+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(80119817491329024+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'RIGHT_OF_IR_SEARCH_BAR',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>83972605915508804 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 11,
  p_branch_action=> 'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>83971919817508800+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 11
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00012
prompt  ...PAGE 12: Concurrent Programs
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 12,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Concurrent Programs',
  p_step_title=> 'Concurrent Programs',
  p_step_sub_title => 'Concurrent Programs',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20130829130109',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>12,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT DISTINCT fcp.concurrent_program_id,fat.application_name,'||chr(10)||
'  fcptl.user_concurrent_program_name,'||chr(10)||
'  fcptl.description,'||chr(10)||
'  fcp.concurrent_program_name,'||chr(10)||
'  fcp.enabled_flag,'||chr(10)||
'  fe.execution_file_name,'||chr(10)||
'  flv.meaning execution_method,'||chr(10)||
'  xcl.customisation_number,'||chr(10)||
'  xccp.r12_keep,'||chr(10)||
'  xccp.assessment'||chr(10)||
'FROM fnd_executables fe ,'||chr(10)||
'  fnd_concurrent_programs fcp,'||chr(10)||
'  fnd_concurrent_programs_tl fcptl ,'||chr(10)||
'  fnd_appli';

s:=s||'cation fa,'||chr(10)||
'  fnd_lookup_values flv,'||chr(10)||
'  fnd_application_tl fat,'||chr(10)||
'  xx_cust_conc_prog xccp,'||chr(10)||
'xx_cust_list xcl'||chr(10)||
'WHERE fcp.concurrent_program_id=fcptl.concurrent_program_id'||chr(10)||
'  --and execution_file_name like ''XMODE%'''||chr(10)||
'AND fe.executable_id        =fcp.executable_id'||chr(10)||
'AND fcp.application_id      =fa.application_id'||chr(10)||
'AND fa.application_id       =fat.application_id'||chr(10)||
'AND fe.execution_method_code=flv.lookup_code'||chr(10)||
'AND fa';

s:=s||'t.language            =''US'''||chr(10)||
'AND lookup_type             = ''CP_EXECUTION_METHOD_CODE'''||chr(10)||
'and xccp.concurrent_program_id = fcp.concurrent_program_id'||chr(10)||
'and xcl.cust_list_id = xccp.cust_id';

wwv_flow_api.create_page_plug (
  p_id=> 84064804682325771 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_plug_name=> 'Concurrent Programs',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_display_condition_type => '%null%',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'SELECT DISTINCT fcp.concurrent_program_id,fat.application_name,'||chr(10)||
'  fcptl.user_concurrent_program_name,'||chr(10)||
'  fcptl.description,'||chr(10)||
'  fcp.concurrent_program_name,'||chr(10)||
'  fcp.enabled_flag,'||chr(10)||
'  fe.execution_file_name,'||chr(10)||
'  flv.meaning execution_method,'||chr(10)||
'  xcl.customisation_number,'||chr(10)||
'  xccp.r12_keep,'||chr(10)||
'  xccp.assessment'||chr(10)||
'FROM fnd_executables fe ,'||chr(10)||
'  fnd_concurrent_programs fcp,'||chr(10)||
'  fnd_concurrent_programs_tl fcptl ,'||chr(10)||
'  fnd_appli';

a1:=a1||'cation fa,'||chr(10)||
'  fnd_lookup_values flv,'||chr(10)||
'  fnd_application_tl fat,'||chr(10)||
'  xx_cust_conc_prog xccp,'||chr(10)||
'xx_cust_list xcl'||chr(10)||
'WHERE fcp.concurrent_program_id=fcptl.concurrent_program_id'||chr(10)||
'  --and execution_file_name like ''XMODE%'''||chr(10)||
'AND fe.executable_id        =fcp.executable_id'||chr(10)||
'AND fcp.application_id      =fa.application_id'||chr(10)||
'AND fa.application_id       =fat.application_id'||chr(10)||
'AND fe.execution_method_code=flv.lookup_code'||chr(10)||
'AND fa';

a1:=a1||'t.language            =''US'''||chr(10)||
'AND lookup_type             = ''CP_EXECUTION_METHOD_CODE'''||chr(10)||
'and xccp.concurrent_program_id = fcp.concurrent_program_id'||chr(10)||
'and xcl.cust_list_id = xccp.cust_id';

wwv_flow_api.create_worksheet(
  p_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 12,
  p_region_id => 84064804682325771+wwv_flow_api.g_id_offset,
  p_name => 'Concurrent Programs',
  p_folder_id => null, 
  p_alias => '',
  p_report_id_item => '',
  p_max_row_count => '10000',
  p_max_row_count_message => 'This query returns more than 10,000 rows, please filter your data to ensure complete results.',
  p_no_data_found_message => 'No data found.',
  p_max_rows_per_page    => '',
  p_search_button_label  => '',
  p_page_items_to_submit => '',
  p_sort_asc_image       => '',
  p_sort_asc_image_attr  => '',
  p_sort_desc_image      => '',
  p_sort_desc_image_attr => '',
  p_sql_query => a1,
  p_base_pk1                  =>'concurrent_program_id',
  p_status                    =>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving       =>'Y',
  p_allow_report_categories   =>'Y',
  p_show_nulls_as             =>'-',
  p_pagination_type           =>'ROWS_X_TO_Y',
  p_pagination_display_pos    =>'BOTTOM_RIGHT',
  p_show_finder_drop_down     =>'Y',
  p_show_display_row_count    =>'Y',
  p_show_search_bar           =>'Y',
  p_show_search_textbox       =>'Y',
  p_show_actions_menu         =>'Y',
  p_report_list_mode          =>'TABS',
  p_show_detail_link          =>'Y',
  p_show_select_columns       =>'Y',
  p_show_filter               =>'Y',
  p_show_sort                 =>'Y',
  p_show_control_break        =>'Y',
  p_show_highlight            =>'Y',
  p_show_computation          =>'Y',
  p_show_aggregate            =>'Y',
  p_show_chart                =>'Y',
  p_show_calendar             =>'Y',
  p_show_flashback            =>'Y',
  p_show_reset                =>'Y',
  p_show_download             =>'Y',
  p_show_help            =>'Y',
  p_download_formats          =>'CSV',
  p_allow_exclude_null_values =>'Y',
  p_allow_hide_extra_columns  =>'Y',
  p_owner                     =>'POULTD10');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065105680325776+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CONCURRENT_PROGRAM_ID',
  p_display_order          =>1,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'A',
  p_column_label           =>'Concurrent Program Id',
  p_report_label           =>'Concurrent Program Id',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065201056325778+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'APPLICATION_NAME',
  p_display_order          =>2,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'B',
  p_column_label           =>'Application Name',
  p_report_label           =>'Application Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065310142325779+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'USER_CONCURRENT_PROGRAM_NAME',
  p_display_order          =>3,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'C',
  p_column_label           =>'User Concurrent Program Name',
  p_report_label           =>'User Concurrent Program Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065418147325779+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DESCRIPTION',
  p_display_order          =>4,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'D',
  p_column_label           =>'Description',
  p_report_label           =>'Description',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065526868325779+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CONCURRENT_PROGRAM_NAME',
  p_display_order          =>5,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'E',
  p_column_label           =>'Concurrent Program Name',
  p_report_label           =>'Concurrent Program Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065631186325779+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ENABLED_FLAG',
  p_display_order          =>6,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'F',
  p_column_label           =>'Enabled Flag',
  p_report_label           =>'Enabled Flag',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065721515325779+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'EXECUTION_FILE_NAME',
  p_display_order          =>7,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'G',
  p_column_label           =>'Execution File Name',
  p_report_label           =>'Execution File Name',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84065827230325780+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'EXECUTION_METHOD',
  p_display_order          =>8,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'H',
  p_column_label           =>'Execution Method',
  p_report_label           =>'Execution Method',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'WITHOUT_MODIFICATION',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84066424226332509+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'CUSTOMISATION_NUMBER',
  p_display_order          =>9,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'I',
  p_column_label           =>'Customisation Number',
  p_report_label           =>'Customisation Number',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84072431863486033+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'R12_KEEP',
  p_display_order          =>10,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'J',
  p_column_label           =>'R12 Keep',
  p_report_label           =>'R12 Keep',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 84072529743486034+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> null,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ASSESSMENT',
  p_display_order          =>11,
  p_group_id               =>null+wwv_flow_api.g_id_offset,
  p_column_identifier      =>'K',
  p_column_label           =>'Assessment',
  p_report_label           =>'Assessment',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_rpt(
  p_id => 84065902755326249+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_status                  =>'PRIVATE',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>1000,
  p_report_columns          =>'CONCURRENT_PROGRAM_ID:APPLICATION_NAME:USER_CONCURRENT_PROGRAM_NAME:DESCRIPTION:CONCURRENT_PROGRAM_NAME:ENABLED_FLAG:EXECUTION_FILE_NAME:EXECUTION_METHOD:CUSTOMISATION_NUMBER:R12_KEEP:ASSESSMENT',
  p_sort_column_1           =>'USER_CONCURRENT_PROGRAM_NAME',
  p_sort_direction_1        =>'DESC',
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
begin
wwv_flow_api.create_worksheet_condition(
  p_id => 84072802905487131+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_worksheet_id => 84064927144325771+wwv_flow_api.g_id_offset,
  p_report_id => 84065902755326249+wwv_flow_api.g_id_offset,
  p_condition_type          =>'FILTER',
  p_allow_delete            =>'Y',
  p_column_name             =>'CUSTOMISATION_NUMBER',
  p_operator                =>'=',
  p_expr                    =>'21',
  p_condition_sql           =>'"CUSTOMISATION_NUMBER" = to_number(#APXWS_EXPR#)',
  p_condition_display       =>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  ',
  p_enabled                 =>'Y',
  p_column_format           =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 12
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 101,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Login',
  p_alias  => 'LOGIN',
  p_step_title=> 'Login',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => 'OFF',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => 80115319791329006+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'POULTD10',
  p_last_upd_yyyymmddhh24miss => '20130820105349',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 80139303451329120 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80139513610329143 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 80139303451329120+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Username',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 2,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80139709616329154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 80139303451329120+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'PASSWORD_WITH_SUBMIT_DNSS',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 80135902277329071+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>80139920389329154 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 80139303451329120+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default => 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(80119817491329024 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 80140331107329166 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'wwv_flow_custom_auth_std.login('||chr(10)||
'    P_UNAME       => :P101_USERNAME,'||chr(10)||
'    P_PASSWORD    => :P101_PASSWORD,'||chr(10)||
'    P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'    P_FLOW_PAGE   => :APP_ID||'':9'''||chr(10)||
'    );';

wwv_flow_api.create_page_process(
  p_id     => 80140122143329156 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 80140722387329166 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 80140502462329166 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/lists/main
 
begin
 
wwv_flow_api.create_list (
  p_id=> 82893524607931272 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Main',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT',
  p_display_row_template_id=> 80130716605329056 + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_list_item (
  p_id=> 82893832225933481 + wwv_flow_api.g_id_offset,
  p_list_id=> 82893524607931272 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'Customisation List',
  p_list_item_link_target=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82894309500936442 + wwv_flow_api.g_id_offset,
  p_list_id=> 82893524607931272 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>20,
  p_list_item_link_text=> 'Customisation Objects',
  p_list_item_link_target=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 84148802144773853 + wwv_flow_api.g_id_offset,
  p_list_id=> 82893524607931272 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>30,
  p_list_item_link_text=> 'Concurrent Programs',
  p_list_item_link_target=> 'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 80138506238329100 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'XX_CUST_OBJECTS Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>80159915617329443 + wwv_flow_api.g_id_offset,
  p_menu_id=>80138506238329100 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Home',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::',
  p_page_id=>9,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>97062608640840361 + wwv_flow_api.g_id_offset,
  p_menu_id=>80138506238329100 + wwv_flow_api.g_id_offset,
  p_parent_id=>80159915617329443 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'All Customisation Objects',
  p_long_name=>'',
  p_link=>'f?p=&FLOW_ID.:11:&SESSION.',
  p_page_id=>11,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>97282521819047632 + wwv_flow_api.g_id_offset,
  p_menu_id=>80138506238329100 + wwv_flow_api.g_id_offset,
  p_parent_id=>80159915617329443 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Customisation Listing',
  p_long_name=>'',
  p_link=>'f?p=&FLOW_ID.:5:&SESSION.',
  p_page_id=>5,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>109312006792165403 + wwv_flow_api.g_id_offset,
  p_menu_id=>80138506238329100 + wwv_flow_api.g_id_offset,
  p_parent_id=>97282521819047632 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Concurrent Programs',
  p_long_name=>'',
  p_link=>'f?p=&FLOW_ID.:8:&SESSION.',
  p_page_id=>8,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>80160027058329443 + wwv_flow_api.g_id_offset,
  p_menu_id=>80138506238329100 + wwv_flow_api.g_id_offset,
  p_parent_id=>97062608640840361 + wwv_flow_api.g_id_offset,
  p_option_sequence=>20,
  p_short_name=>'Insert Customisation Object',
  p_long_name=>'',
  p_link=>'f?p=101:2:&SESSION.',
  p_page_id=>2,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>80160124987329443 + wwv_flow_api.g_id_offset,
  p_menu_id=>80138506238329100 + wwv_flow_api.g_id_offset,
  p_parent_id=>97062608640840361 + wwv_flow_api.g_id_offset,
  p_option_sequence=>30,
  p_short_name=>'Update Customisation Object',
  p_long_name=>'',
  p_link=>'f?p=101:3:&SESSION.',
  p_page_id=>3,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>80160210923329443 + wwv_flow_api.g_id_offset,
  p_menu_id=>80138506238329100 + wwv_flow_api.g_id_offset,
  p_parent_id=>80159915617329443 + wwv_flow_api.g_id_offset,
  p_option_sequence=>40,
  p_short_name=>'Success',
  p_long_name=>'',
  p_link=>'f?p=101:4:&SESSION.',
  p_page_id=>4,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 101
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 80115319791329006
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div';

c3:=c3||'>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody" height="70%" align="center" width="400">'||chr(10)||
'<td width="100%" valign="top" height="100%" id="t20ContentBody" align="center">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" wid';

c3:=c3||'th="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80115319791329006 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 80115614213329017
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div';

c3:=c3||'>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" height="100%" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight';

c3:=c3||'">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80115614213329017 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_with_sidebar
prompt  ......Page template 80115911454329017
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div';

c3:=c3||'>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" height="100%" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#';

c3:=c3||'</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80115911454329017 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs
prompt  ......Page template 80116224486329018
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'<';

c3:=c3||'div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valig';

c3:=c3||'n="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80116224486329018 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_custom_1
prompt  ......Page template 80116514656329018
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSI';

c3:=c3||'TION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80116514656329018 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs (Custom 1)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 8,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_custom_5
prompt  ......Page template 80116832634329020
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'#REGION_POSITION_08#'||chr(10)||
'';

c3:=c3||'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td vali';

c3:=c3||'gn="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80116832634329020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs (Custom 5)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 12,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_sidebar
prompt  ......Page template 80117104697329020
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'<';

c3:=c3||'div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20Conten';

c3:=c3||'tMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80117104697329020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_sidebar_custom_2
prompt  ......Page template 80117427214329020
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSA';

c3:=c3||'GE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80117427214329020 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs Sidebar  (Custom 2)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 9,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_sidebar_custom_6
prompt  ......Page template 80117706432329021
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'#REGION_POSITION_08#'||chr(10)||
'';

c3:=c3||'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20Conte';

c3:=c3||'ntMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80117706432329021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs Sidebar (Custom 6)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 13,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 80118026012329021
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">#LOGO##REGION_POSITION_06#</td>'||chr(10)||
'<td width="100%" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_08#</td>'||chr(10)||
'</table>'||chr(10)||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top">'||chr(10)||
'<div style="border:1px solid black;">#SUCCESS_MESSAG';

c3:=c3||'E##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'#BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 80118026012329021 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '<div class="t20NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 80118329082329022
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<t';

c3:=c3||'d width="100%" valign="top"><div class="t20messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80118329082329022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '<div class="t20NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs
prompt  ......Page template 80118617593329022
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>'||chr(10)||
'<';

c3:=c3||'/div>'||chr(10)||
'<div id="t20tablist">#TAB_CELLS#</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION';

c3:=c3||'_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80118617593329022 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_custom_3
prompt  ......Page template 80118911629329023
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20ChildTabs">#TAB_CELLS#</div>'||chr(10)||
'<div style="background-color:none;">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id';

c3:=c3||'="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80118911629329023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs  (Custom 3)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 10,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar
prompt  ......Page template 80119212768329023
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>'||chr(10)||
'<';

c3:=c3||'/div>'||chr(10)||
'<div id="t20tablist">#TAB_CELLS#</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##';

c3:=c3||'NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80119212768329023 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>'||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar_custom_4
prompt  ......Page template 80119505150329024
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20ChildTabs">#TAB_CELLS#</div>'||chr(10)||
'<div style="background-color:none;">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Mes';

c3:=c3||'sages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 80119505150329024 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Sidebar  (Custom 4)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 11,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 80119817491329024
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>80119817491329024 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 80120025441329028
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button2">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>80120025441329028 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_template_comment       => 'XP Square FFFFFF');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 80120211851329029
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>80120211851329029 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 80120422054329029
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>80120422054329029 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 80120624289329029
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20Borderless" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr>';

t:=t||'<td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80120624289329029 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Borderless Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80120624289329029 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 80120921340329040
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20Bracketed" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><';

t:=t||'td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80120921340329040 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Bracketed Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 18,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80120921340329040 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 80121115180329040
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div id="#REGION_STATIC_ID#" class="t20Breadcrumbs" #REGION_ATTRIBUTES#>#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80121115180329040 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Breadcrumb Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80121115180329040 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 80121426026329040
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ButtonRegionwithTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td';

t:=t||'></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>#BODY#';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80121426026329040 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region with Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80121426026329040 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 80121724566329040
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>#BODY#';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80121724566329040 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region without Title',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 17,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80121724566329040 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 80122007055329041
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ChartRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr';

t:=t||'><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80122007055329041 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 30,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80122007055329041 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 80122332090329041
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20FormRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr>';

t:=t||'<td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80122332090329041 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Form Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 8,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80122332090329041 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 80122615266329042
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20HideShow" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header"><img src="#IMAGE_PREFIX#themes/theme_20/collapse_plus.gif" onclick="htmldb_ToggleWithImage(this,''#REGION_STATIC_ID#_body'')" class="pb" alt="" />#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATI';

t:=t||'C_ID#_body" style="display:none;">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80122615266329042 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Hide and Show Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80122615266329042 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/list_region_with_icon_chart
prompt  ......region template 80122911699329043
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ListRegionwithIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></';

t:=t||'tr>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80122911699329043 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'List Region with Icon (Chart)',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80122911699329043 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 80123225323329043
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t20Region t20NavRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'<div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div>'||chr(10)||
'<div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div>'||chr(10)||
'</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80123225323329043 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80123225323329043 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 80123524529329043
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t20Region t20NavRegionAlt" id="#REGION_STATIC_ID#"#REGION_ATTRIBUTES#><div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div><div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div></div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80123524529329043 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region, Alternative 1',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 16,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80123524529329043 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_title
prompt  ......region template 80123815248329043
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20RegionwithoutButtonsandTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80123815248329043 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Buttons and Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 19,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80123815248329043 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 80124130914329043
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20RegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80124130914329043 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 11,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80124130914329043 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 80124404169329044
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f';

t:=t||'ind.png" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||chr(10)||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||chr(10)||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="';

t:=t||'apex_finderbar_left_middle"><br /></td></tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80124404169329044 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report Filter - Single Row',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 31,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80124404169329044 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 80124726890329044
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportList" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr>';

t:=t||'<td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80124726890329044 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80124726890329044 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 80125009553329044
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<t';

t:=t||'r><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80125009553329044 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 9,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80125009553329044 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 80125329589329044
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportsRegion100" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr';

t:=t||'>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80125329589329044 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region 100% Width',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 13,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80125329589329044 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 80125600474329044
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportsRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr';

t:=t||'>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80125600474329044 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region, Alternative 1',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 10,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80125600474329044 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 80125907098329045
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20SidebarRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80125907098329045 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80125907098329045 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 80126217702329045
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20SidebarRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80126217702329045 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Alternative 1',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80126217702329045 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 80126527868329046
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20WizardRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<t';

t:=t||'r><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80126527868329046 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 12,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80126527868329046 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 80126820690329046
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20WizardRegionIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr';

t:=t||'>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 80126820690329046 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region with Icon',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 20,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 80126820690329046 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 80127124973329046
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button t20current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t20Button">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80127124973329046 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t20ButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanded
prompt  ......list template 80127403582329050
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>80127403582329050 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanded',
  p_theme_id  => 20,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="htmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanding
prompt  ......list template 80127726949329051
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>80127726949329051 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 20,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 80128027984329051
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t20current"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/><br />#TEXT#</td>';

t2:=t2||'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80128027984329051 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table class="t20HorizontalImageswithLabelList" cellpadding="0" border="0" cellspacing="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 80128315107329052
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80128315107329052 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="t20HorizontalLinksList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 80128602566329052
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>80128602566329052 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 20,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 80128906264329052
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>80128906264329052 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 20,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image_custom_1
prompt  ......list template 80129207825329053
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>80129207825329053 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image (Custom 1)',
  p_theme_id  => 20,
  p_theme_class_id => 9,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tab_list_custom_3
prompt  ......list template 80129512426329055
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80129512426329055 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tab List (Custom 3)',
  p_theme_id  => 20,
  p_theme_class_id => 11,
  p_list_template_before_rows=>'<div id="t20tablist">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'This list matches the child tabs on the Two Level Tab templates.'||chr(10)||
'Use in region position 8 of One Level Tabs (Custom 5) and/or One Level Tabs Sidebar (Custom 6).');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 80129819827329055
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>';

t2:=t2||'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80129819827329055 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table class="t20Tabs t20TabbedNavigationList" border="0" cellpadding="0" cellspacing="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 80130116721329055
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t20current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80130116721329055 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20VerticalImagesList">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list_custom_2
prompt  ......list template 80130413142329056
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||chr(10)||
'';

t2:=t2||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||chr(10)||
'';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80130413142329056 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List (Custom 2)',
  p_theme_id  => 20,
  p_theme_class_id => 10,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >',
  p_list_template_after_rows=>'</table>'||chr(10)||
'',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 80130716605329056
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80130716605329056 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t20VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 80131022415329056
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80131022415329056 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 20,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="t20VerticalSidebarList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_links_without_bullets
prompt  ......list template 80131300352329057
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80131300352329057 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered Links without Bullets',
  p_theme_id  => 20,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t20VerticalUnorderedLinkswithoutBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 80131628306329057
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80131628306329057 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t20VerticalUnorderedListwithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 80131918588329057
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="t20current">#TEXT#</div>';

t2:=t2||'<div>#TEXT#</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>80131918588329057 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 20,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="t20WizardProgressList">',
  p_list_template_after_rows=>'<center>&DONE.</center>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless
prompt  ......report template 80132203586329057
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 80132203586329057 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table class="t20Borderless t20Report" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'||chr(10)||
'',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 80132203586329057 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 80132731647329064
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 80132731647329064 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table class="t20HorizontalBorder t20Report" border="0" cellpadding="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 80132731647329064 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 80133231833329065
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'#COLUMN_VALUE#';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 80133231833329065 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||chr(10)||
'#TOP_PAGINATION#<tr><td><ul class="t20OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 80133231833329065 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<li>',
  p_row_template_after_last =>'</li>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 80133707980329065
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 80133707980329065 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report t20Standard">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 80133707980329065 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_ppr
prompt  ......report template 80134215971329066
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 80134215971329066 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Standard t20Report">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table><script language=JavaScript type=text/javascript>'||chr(10)||
'<!--'||chr(10)||
'init_htmlPPRReport(''#REGION_ID#'');'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'</htmldb:#REGION_ID#>'||chr(10)||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 80134215971329066 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 80134721106329066
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2:=c2||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20dataalt">#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 80134721106329066 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t20StandardAlternatingRowColors t20Report">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 80134721106329066 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 80135231493329067
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr>'||chr(10)||
'<th class="t20ReportHeader">#COLUMN_HEADER#</th>'||chr(10)||
'<td class="t20data">#COLUMN_VALUE#</td>'||chr(10)||
'</tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 80135231493329067 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary=""#REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t20ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 80135231493329067 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'',
  p_row_template_after_last =>'<tr><td colspan="2" class="t20seperate"><br /></td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 80135725810329069
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 80135725810329069 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t20NoLabel">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label
prompt  ......label template 80135820991329071
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 80135820991329071 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20OptionalLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_with_help
prompt  ......label template 80135902277329071
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 80135902277329071 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="t20OptionalLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label
prompt  ......label template 80136025770329071
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 80136025770329071 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20Req">*</span><span class="t20RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_with_help
prompt  ......label template 80136115883329071
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 80136115883329071 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20Req">*</span><a class="t20RequiredLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 80136208169329071
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 80136208169329071 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'',
  p_current_page_option=>'<a href="#LINK#" class="t20Current">#NAME#</a>',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'<b>&gt;</b>',
  p_after_last=>'',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 80136310017329076
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 80136310017329076 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t20HierarchicalMenu">',
  p_current_page_option=>'<li class="t20current"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 80137019402329085
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 80137019402329085 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#lov_16x16.gif',
  p_popup_icon_attr=>'width="16" height="16" alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css">'||chr(10)||
'',
  p_page_body_attr=>'onload="first_field()" style="background-color:#FFFFFF;margin:0;"',
  p_before_field_text=>'<div class="t20PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t20PopupBody">',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 80136425789329076
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 80136425789329076 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t20DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div><br />',
  p_day_open_format=> '<td class="t20Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div><br />',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div><br />',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 80136602370329083
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 80136602370329083 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t20DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20Calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div><br />',
  p_day_open_format=> '<td class="t20Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div><br />',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div><br />',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calender
prompt  ......template 80136826111329083
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 80136826111329083 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calender',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20SmallCalenderHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20SmallCalender">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t20Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/modern_blue
prompt  ......theme 80137209969329087
begin
wwv_flow_api.create_theme (
  p_id =>80137209969329087 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 20,
  p_theme_name=>'Modern Blue',
  p_default_page_template=>80116224486329018 + wwv_flow_api.g_id_offset,
  p_error_template=>80116224486329018 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>80118329082329022 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'',
  p_login_template=>80115319791329006 + wwv_flow_api.g_id_offset,
  p_default_button_template=>80119817491329024 + wwv_flow_api.g_id_offset,
  p_default_region_template=>80125009553329044 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>80122007055329041 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>80122332090329041 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>80125009553329044 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>80125009553329044 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>80126527868329046 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>80121115180329040 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>80125009553329044 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>80133707980329065 + wwv_flow_api.g_id_offset,
  p_default_label_template=>80135902277329071 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>80136208169329071 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>80136425789329076 + wwv_flow_api.g_id_offset,
  p_default_list_template=>80131628306329057 + wwv_flow_api.g_id_offset,
  p_default_option_label=>80135902277329071 + wwv_flow_api.g_id_offset,
  p_default_required_label=>80136115883329071 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 101
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 101
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations used by application: 101
--
--application/shared_components/globalization/language
prompt  ...Language Maps for Application 101
--
 
begin
 
null;
 
end;
/

prompt  ...Shortcuts
--
--application/shared_components/user_interface/shortcuts/delete_confirm_msg
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 80151207252329412 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

--application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Are you sure you want to leave this page without saving?';

wwv_flow_api.create_shortcut (
 p_id=> 80156300514329427 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'OK_TO_GET_NEXT_PREV_PK_VALUE',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/html_db
prompt  ......scheme 80137625776329096
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 80137625776329096 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'HTML DB',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......scheme 80137927944329098
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 80137927944329098 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......scheme 80138213991329099
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 80138213991329099 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/end_environment
commit;
commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
