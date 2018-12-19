

local PConv, parent = torch.class('nn.PConv', 'nn.Module')

function PConv:__init()
    parent.__init(self)

    self.img=torch.Tensor()
    self.mask=torch.Tensor()
    self.gradImg=torch.Tensor()
    self.gradMask=torch.Tensor()
end



function PConv:updateOutput(input,mask)
    assert(input:nDimension() == 4)
    return input,mask
end



function PConv:updateGradInput(input, gradOutput)
    
    return self.input
end


function PConv:clearState()
    -- self.output = self.output.new()
    -- self.gradInput = self.gradInput.new()

end

