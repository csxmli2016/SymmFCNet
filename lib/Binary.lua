require 'nn'

local Binary, parent = torch.class('nn.Binary', 'nn.Module')

function Binary:__init(Threshold)
    parent.__init(self)
    self.Threshold = Threshold
end

function Binary:updateOutput(input)
    -- if self.train then
        self.output:resizeAs(input):zero()
        self.output[input:ge(self.Threshold)]=1
        -- self.output[input:lt(self.Threshold)]=0
        return self.output
    -- else
    --     self.output[input:ge(self.Threshold)]=1
    --     self.output[input:lt(self.Threshold)]=0
    --     return self.output 
    -- end
end

function Binary:updateGradInput(input,gradOutput)
    self.gradInput:resizeAs(gradOutput):zero()
    self.gradInput[torch.cmul(input:ge(0),input:le(1))]=1
    return self.gradInput
end
