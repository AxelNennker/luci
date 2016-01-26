module("luci.controller.idclient.new_tab", package.seeall)  --notice that new_tab is the name of the file new_tab.lua

function index()
     entry({"idclient", "new_tab"}, firstchild(), "New tab", 30).dependent=false  --this adds the top level tab and defaults to the first sub-tab (tab_from_cbi), also it is set to position 30
     entry({"idclient", "new_tab", "tab_from_cbi"}, cbi("idclient-module/cbi_tab"), "CBI Tab", 1)  --this adds the first sub-tab that is located in <luci-path>/luci-idclientlication/model/cbi/idclient-module and the file is called cbi_tab.lua, also set to first position
     entry({"idclient", "new_tab", "tab_from_view"}, template("idclient-module/view_tab"), "View Tab", 2)  --this adds the second sub-tab that is located in <luci-path>/luci-idclientlication/view/idclient-module and the file is called view_tab.htm, also set to the second position
end
