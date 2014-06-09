require_relative '../lib/pig_latin'

describe PigLatin do
  it 'translates a word starting with a consonant' do
    pl = PigLatin.new('something')
    expect(pl.translate).to eq('omethingsay')
  end

  it 'translates a word starting with a vowel' do
    pl = PigLatin.new('egg')
    expect(pl.translate).to eq('eggway')
  end

  it 'translates a word starting with a cluster of consonants' do
    pl = PigLatin.new('glove')
    expect(pl.translate).to eq('oveglay')
  end

  it 'translates a word starting with a cluster of consonants' do
    pl = PigLatin.new('straight')
    expect(pl.translate).to eq('aightstray')
  end


end
