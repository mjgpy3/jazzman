describe('DayMan', function () {
  var dayman;

  beforeEach(function () {
    dayman = new Dayman();
  });

  it('is the fighter of the nightman', function () {
    expect(dayman.opponent).toBe(Nightman);
  });

  it('is the champion of the sun', function () {
    expect(dayman.isChampionOfTheSun).toBeTruthy();
  });

  describe('when he beat the Nightman', function () {
    beforeEach(function () {
      dayman.defeated(Nightman);
    });

    it('became a master of karate', function () {
        expect(dayman.isMasterOfKarate).toBeTruthy();
    });
  });
});
