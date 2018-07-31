


local PANEL = {};

local unOccupied = surface.GetTextureID("PERP2/inventory/inv_devs");

function PANEL:Init ( )
	
	self:SetVisible(true);
	
	self.NextChangeVisi = CurTime();
	self.ourAlpha = 255;
end

function PANEL:PerformLayout ( )

end

function PANEL:Paint ( )
	if (self.NextChangeVisi <= CurTime()) then
		self.NextChangeVisi = CurTime() + (1 / 200);
		
		if (self.itemTable) then
			self.ourAlpha =  math.Clamp(self.ourAlpha - (transitionSpeed * .2), 200, 255);
		else
			self.ourAlpha =  math.Clamp(self.ourAlpha + (transitionSpeed * .2), 200, 255);
		end
	end

	surface.SetTexture(unOccupied);
	local oa = math.Clamp(self.ourAlpha, 200, 255);
	
	surface.SetDrawColor(0, 0, 0, 255);
	surface.DrawOutlinedRect(0, 0, self:GetWide(), self:GetTall());
	
	surface.SetDrawColor(255, 255, 255, oa);
	surface.DrawTexturedRect(1, 1, self:GetWide() - 2, self:GetTall() - 2);
end

function PANEL:SetDisplay ( itemTable )
	self.itemTable = itemTable;
	
	/*if (self.itemTable) then
		if self.ModelPanel then
			self.ModelPanel:Remove();
			self.ModelPanel = nil;
		end
	
		self.ModelPanel = vgui.Create("DModelPanel", self);
		function self.ModelPanel:LayoutEntity ( ) end
										
		self.ModelPanel:SetPos(3, 3);
		self.ModelPanel:SetSize(self:GetWide() - 6, self:GetTall() - 6);
					
		self.ModelPanel:SetModel(self.itemTable.InventoryModel);
					
		self.ModelPanel:SetCamPos(self.itemTable.ModelCamPos)
		self.ModelPanel:SetLookAt(self.itemTable.ModelLookAt)
		self.ModelPanel:SetFOV(self.itemTable.ModelFOV)
		
		local iSeq = self.ModelPanel.Entity:LookupSequence('ragdoll');
		self.ModelPanel.Entity:ResetSequence(iSeq);
	elseif (self.ModelPanel) then
		self.ModelPanel:Remove();
		self.ModelPanel = nil;
	end*/
end

vgui.Register("perp2_inventory_logo", PANEL);