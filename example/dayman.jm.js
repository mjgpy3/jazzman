describe DayMan[[
  var dayman;

  before[[
    dayman = new Dayman();
  ]]

  it is the fighter of the nightman[[
    expect(dayman.opponent).toBe(Nightman);
  ]]

  it is the champion of the sun[[
    expect(dayman.isChampionOfTheSun()).toBeTruthy();
  ]]

  describe when he beat the Nightman[[
    before[[
      dayman.defeated(Nightman);
    ]]

    it became a master of karate[[
        expect(dayman.isMasterOfKarate()).toBeTruthy();
    ]]
  ]]
]]
