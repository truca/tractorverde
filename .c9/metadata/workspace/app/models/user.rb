{"filter":false,"title":"user.rb","tooltip":"/app/models/user.rb","undoManager":{"mark":2,"position":2,"stack":[[{"group":"doc","deltas":[{"start":{"row":5,"column":2},"end":{"row":5,"column":20},"action":"remove","lines":["belongs_to :client"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":2},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":2},"end":{"row":18,"column":5},"action":"insert","lines":["def dashboard","    if not user_signed_in?","      redirect_to :controller=>'home', :action=>'index'","    end","  end","  ","  def orders","    if not user_signed_in?","      redirect_to :controller=>'home', :action=>'index'","    end","    ","    @orders = Order.where(:client_id => 1)","  end"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":2},"end":{"row":6,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1428613065523,"hash":"806a3820ce86e570de4579674704361cc6648b18"}