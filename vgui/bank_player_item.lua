


local PANEL = {};

function PANEL:Think ( ) end

PANEL.otherGrabItem = PANEL.GrabItem;

function PANEL:OnMousePressed ( MouseCode )	
	if (MouseCode == MOUSE_LEFT) then
		GAMEMODE.BankGive(self.trueParent.itemID, 1)
		GAMEMODE.BankIPanel:Remove();
		GAMEMODE.BankIPanel = vgui.Create("perp_bank")
	elseif (MouseCode == MOUSE_RIGHT) then
		//GAMEMODE.SellItem(self.trueParent.itemID, 5);
	end
end

function PANEL:OnMouseReleased( MouseCode )

end

vgui.Register("perp_bank_player_item", PANEL, "perp2_inventory_block_item");