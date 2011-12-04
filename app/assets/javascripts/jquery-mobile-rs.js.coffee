//= require recurring_select
//= require_self

$ ->
  $(document).on "recurring_select:cancel recurring_select:save", ".recurring_select", ->
    $(this).selectmenu('refresh');
  
  $(document).on "recurring_select:dialog_opened", ".rs_dialog_holder", ->
    $(this).find("select").attr("data-theme", $('.recurring_select').data("theme")).attr("data-native-menu", "false").selectmenu()
    $(this).find("input[type=text]").textinput()