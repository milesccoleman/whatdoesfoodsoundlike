#Elemental Sounds
#Miles C. Coleman

require 'csv'
use_osc "localhost", 12000

#source data
data = CSV.parse(File.read("/your/File/path/whatdoesfoodsoundlike.csv"), {:headers => true, :header_converters => :symbol})

#musical parameters
use_bpm 120

#main sonification
with_fx :reverb do |r|
  control r, mix: 0.9
  
  #individual nutritional data
  data.each do |line|
    
    sodium = line[:sodium].to_f
    sodium2 = line[:sodium].to_f.round/100
    sodium3 = line[:sodium].to_f.round/100/10
    fat = line[:fat].to_f
    fat2 = line[:fat].to_f.round/10
    fat3 = line[:fat].to_f.round*10
    cholesterol = line[:cholesterol].to_f
    cholesterol2 = line[:cholesterol].to_f.round
    cholesterol3 = line[:cholesterol].to_f.round/100
    
    :sodium
    if sodium >= 1501
      use_synth :tri
      play chord(:E + sodium2, :minor), attack: (sodium3), decay: (sodium3), amp: (sodium3)
      use_synth :square
      play chord(:E + sodium2, :minor), attack: (sodium3), decay: (sodium3), amp: (sodium3)
      use_synth :piano
      play chord(:E + sodium2, :minor), attack: (sodium3), decay: (sodium3), amp: (sodium3)
      use_synth :tri
    end
    
    if sodium <= 1500
      use_synth :tri
      play chord(:E + sodium2, :major), attack: (sodium3), decay: (sodium3), amp: (sodium3)
      use_synth :square
      play chord(:E + sodium2, :major), attack: (sodium3), decay: (sodium3), amp: (sodium3)
      use_synth :piano
      play chord(:E + sodium2, :major), attack: (sodium3), decay: (sodium3), amp: (sodium3)
      use_synth :tri
    end
    
    :fat
    if fat >= 23
      use_synth :pretty_bell
      play chord(:E + fat2, :minor), attack: (fat3), decay: (fat3), amp: (fat3)
      use_synth :sine
      play chord(:E + fat2, :minor), attack: (fat3), decay: (fat3), amp: (fat3)
      use_synth :bnoise
      play chord(:E + fat2, :minor), attack: (fat3), decay: (fat3), amp: (fat3)
    end
    
    if fat <= 22
      use_synth :pretty_bell
      play chord(:E + fat2, :major), attack: (fat3), decay: (fat3), amp: (fat3)
      use_synth :sine
      play chord(:E + fat2, :major), attack: (fat3), decay: (fat3), amp: (fat3)
      use_synth :bnoise
      play chord(:E + fat2, :major), attack: (fat3), decay: (fat3), amp: (fat3)
    end
    
    :cholesterol
    if cholesterol >= 301
      use_synth :chipbass
      play chord(:E + cholesterol2, :minor), attack: (cholesterol3), decay: (cholesterol3), amp: (cholesterol3)
      use_synth :subpulse
      play chord(:E + cholesterol2, :minor), attack: (cholesterol3), decay: (cholesterol3), amp: (cholesterol3)
      use_synth :fm
      play chord(:E + cholesterol2, :minor), attack: (cholesterol3), decay: (cholesterol3), amp: (cholesterol3)
    end
    
    if cholesterol <= 300
      use_synth :chipbass
      play chord(:E + cholesterol2, :major), attack: (cholesterol3), decay: (cholesterol3), amp: (cholesterol3)
      use_synth :subpulse
      play chord(:E + cholesterol2, :major), attack: (cholesterol3), decay: (cholesterol3), amp: (cholesterol3)
      use_synth :fm
      play chord(:E + cholesterol2, :major), attack: (cholesterol3), decay: (cholesterol3), amp: (cholesterol3)
    end
  end
end


