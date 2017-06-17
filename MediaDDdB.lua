local moduleName = "QuoteMediaDDdB";
local moduleid = "DDdB";
local moduleData = nil;
local frame = CreateFrame("Frame", "QuoteMediaDDdBFakeFrame");

function QuoteMediaDDdB_OnEvent(this, event, arg1, arg2, arg3, arg4, ...)
    if ((event == "ADDON_LOADED") and (arg1 == moduleName)) then
        if (IsAddOnLoaded("WoWQuote2") or IsAddOnLoaded("KQuote")) then
            QuoteMediaDDdB_Init();
            if (IsAddOnLoaded("WoWQuote2")) then
                WQ2_InitModule(moduleData);
            end
            if (IsAddOnLoaded("KQuote")) then
                KQ_InitModule(moduleData);
            end            
        else
            DEFAULT_CHAT_FRAME:AddMessage(moduleName..": Please install KQuote or WoWQuote2!",1.0,0.0,0.0);
        end
        frame:UnregisterEvent("ADDON_LOADED");
    end
end

frame:SetScript("OnEvent", QuoteMediaDDdB_OnEvent);
frame:RegisterEvent("ADDON_LOADED");

function QuoteMediaDDdB_Init()
    DEFAULT_CHAT_FRAME:AddMessage(moduleName.." loaded.");
    moduleData = {
		name = "DieDachseDesBösen",
    	moduleid = moduleid,
    	mediapath = "Interface\\AddOns\\"..moduleName.."\\media\\",
		mediadata = nil,
		--[[ tags = {
            ["tagid1"] = "Description1",
            ["tagid2"] = "Description2",--
            }  			-- add your own tags here, if any --]]
    }

    moduleData.mediadata =
{
-- begin media data
{
    id = "DDdB:001",
    file = "How_I_Met.mp3",
    len = 14,											-- length in seconds
    msg = "How I Met your Mother Theme *träller*",
	tag = {"HiMyM", "music", "DDdB",},
},
{
    id = "DDdB:002",
    file = "bbt_theme.mp3",
    len = 19,											-- length in seconds
    msg = "Big Bang Theory Theme *träller*",
	tag = {"BigBang", "music", "DDdB",},
},

{
    id = "DDdB:003",
    file = "Legendary.mp3",
    len = 6,											-- length in seconds
    msg = "Legendary",
	tag = {"HiMyM", "music", "DDdB",},
},
{
    id = "DDdB:004",
    file = "DerSchwertmeisterCut.mp3",
    len = 44,											-- length in seconds
    msg = "Der Schwertmeister",
	tag = {"BigBang", "DDdB",},
},
{
    id = "DDdB:005",
    file = "SteinPapierSchereEchseSpock.mp3",
    len = 22,											-- length in seconds
    msg = "SteinPapierSchereEchseSpock",
	tag = {"BigBang", "DDdB",},
},
{
    id = "DDdB:006",
    file = "SteinPapierSchereEchseSpockShort.mp3",
    len = 4,											-- length in seconds
    msg = "SteinPapierSchere Short",
	tag = {"BigBang", "DDdB",},
},

{
    id = "DDdB:007",
    file = "kleinerDachs.mp3",
    len = 3,											-- length in seconds
    msg = "Der Kleiner Dachs",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:008",
    file = "bereit.mp3",
    len = 8,											-- length in seconds
    msg = "Denny Crane ist Bereit",
	tag = {"BostonLegal", "Dachs", "DDdB",},
},
{
    id = "DDdB:009",
    file = "keineAhnung.mp3",
    len = 7,											-- length in seconds
    msg = "Denny Crane hat keine Ahnung",
	tag = {"BostonLegal", "Dachs", "DDdB",},
},
{
    id = "DDdB:010",
    file = "pastelltoene.mp3",
    len = 7,											-- length in seconds
    msg = "Denny Crane: Farbige Scheisse",
	tag = {"BostonLegal", "Dachs", "DDdB",},
},
{
    id = "DDdB:011",
    file = "StaySharpStayAlive.mp3",
    len = 7,											-- length in seconds
    msg = "Stay Sharp Stay Alive",
	tag = {"Stargate Atlantis", "Dachs", "DDdB",},
},
{
    id = "DDdB:012",
    file = "mackay.mp3",
    len = 2,											-- length in seconds
    msg = "This is Mackay",
	tag = {"Stargate Atlantis", "Dachs", "DDdB",},
},
{
    id = "DDdB:013",
    file = "bunt.mp3",
    len = 5,											-- length in seconds
    msg = "Drogen",
	tag = {"Stargate Atlantis", "Dachs", "DDdB",},
},
{
    id = "DDdB:014",
    file = "morphium.mp3",
    len = 3,											-- length in seconds
    msg = "Morphium gespritzt",
	tag = {"Stargate Atlantis", "Dachs", "DDdB",},
},
{
    id = "DDdB:015",
    file = "Zelle.mp3",
    len = 9,											-- length in seconds
    msg = "Jede Zelle ist Glücklich *träller*",
	tag = {"musik", "Dachs", "DDdB",},
},
{
    id = "DDdB:016",
    file = "alt.mp3",
    len = 5,											-- length in seconds
    msg = "Denny Crane: ziehen wir es durch.",
	tag = {"BostonLegal", "Dachs", "DDdB",},
},

{
    id = "DDdB:017",
    file = "Barney3Tage.mp3",
    len = 65,											-- length in seconds
    msg = "Barney Stinson: Die 3 Tage Regel.",
	tag = {"Dachs", "DDdB",},
},

{
    id = "DDdB:018",
    file = "BarneyAndGod.mp3",
    len = 13,											-- length in seconds
    msg = "Barney Stinson: Hey God Watup?!.",
	tag = {"Dachs", "DDdB",},
},

{
    id = "DDdB:019",
    file = "BarneyJenkins.mp3",
    len = 6,											-- length in seconds
    msg = "Barney Stinson: Barney vs. Leeeeroy!.",
	tag = {"Dachs", "DDdB",},
},

{
    id = "DDdB:020",
    file = "BarneyTheFinisher.mp3",
    len = 6,											-- length in seconds
    msg = "Banrey Stinson: The Finischer.",
	tag = {"Dachs", "DDdB",},
},

{
    id = "DDdB:021",
    file = "HimyMLetsGoToTheMall.mp3",
    len = 14,											-- length in seconds
    msg = "Lets go to the Mall *träller*.",
	tag = {"musik", "Dachs", "DDdB",},
},

{
    id = "DDdB:022",
    file = "HimyMWoW.mp3",
    len = 14,											-- length in seconds
    msg = "Ted trifft WoW - Freundin.",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:023",
    file = "SouthparkKackboon.mp3",
    len = 20,											-- length in seconds
    msg = "Ich bin kein Kackboon.",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:024",
    file = "SouthparkSchuessel.mp3",
    len = 14,											-- length in seconds
    msg = "Cartman und die Schüssel",
	tag = {"Dachs", "DDdB",},
},

{
    id = "DDdB:025",
    file = "BigBangCoke.mp3",
    len = 23,											-- length in seconds
    msg = "Big Bang: Diet Coke",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:026",
    file = "BigBangBatman.mp3",
    len = 14,											-- length in seconds
    msg = "Big Bang: Ich bin Batman",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:027",
    file = "BigBangKriegsfuehrung.mp3",
    len = 13,											-- length in seconds
    msg = "Die Psychologische Kriegsführung",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:028",
    file = "BigBangNeutrino.mp3",
    len = 8,											-- length in seconds
    msg = "Subatomarer Satansbraten",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:029",
    file = "BigBangSuesseBrust.mp3",
    len = 5,											-- length in seconds
    msg = "Die Süße Brust",
	tag = {"Dachs", "DDdB",},
},

{
    id = "DDdB:030",
    file = "DrCoxBigBang.mp3",
    len = 13,											-- length in seconds
    msg = "Dr. Cox meets Big Bang Theroy",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:031",
    file = "DrCoxBrief.mp3",
    len = 10,											-- length in seconds
    msg = "Liebes Arschloch",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:032",
    file = "DrCoxDerHelm.mp3",
    len = 15,											-- length in seconds
    msg = "Der besondere Helm",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:033",
    file = "DrCoxEinfachAlles.mp3",
    len = 10,											-- length in seconds
    msg = "Einfach Alles",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:034",
    file = "DrCoxMrCookie.mp3",
    len = 20,											-- length in seconds
    msg = "Mr Cookie-Pants",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:035",
    file = "DrCoxProstituierte.mp3",
    len = 9,											-- length in seconds
    msg = "Die Clowns-Prostituierte",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:036",
    file = "DrCoxUmarmung.mp3",
    len = 9,											-- length in seconds
    msg = "Die besondere Umarmung",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:037",
    file = "Licht.mp3",
    len = 10,											-- length in seconds
    msg = "Blaues Licht leuchtet Blau",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:038",
    file = "CartmanZwerg.mp3",
    len = 5,											-- length in seconds
    msg = "Cartman verprügelt einen Zwerg",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:039",
    file = "DennyLiebtZwerge.mp3",
    len = 5,											-- length in seconds
    msg = "Denny Crane: Ich liebe Zwerge",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:040",
    file = "DrHouseGnom.mp3",
    len = 6,											-- length in seconds
    msg = "Ich hasse Gnome",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:041",
    file = "DrHouseInternetpornos.mp3",
    len = 14,											-- length in seconds
    msg = "Harte Nacht mit Internetpornos",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:042",
    file = "EndOfWow.mp3",
    len = 18,											-- length in seconds
    msg = "It's the end of Wolrd of Warcraft *täller*",
	tag = {"music",},
},
{
    id = "DDdB:043",
    file = "IndianaPyramiede.mp3",
    len = 7,											-- length in seconds
    msg = "Die Pyramiede muss fertig werden.",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:044",
    file = "IndianaSeife.mp3",
    len = 7,											-- length in seconds
    msg = "Die Seife Mietz Mietz",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:045",
    file = "JackKumpel.mp3",
    len = 8,											-- length in seconds
    msg = "Der gehirnamputiert Psychopath",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:046",
    file = "JackSirNoee.mp3",
    len = 5,											-- length in seconds
    msg = "Sir, sind sie da? - Nö!!",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:047",
    file = "JackVerbindung.mp3",
    len = 9,											-- length in seconds
    msg = "Die Schlechte Verbindung",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:048",
    file = "JackVerrueckt.mp3",
    len = 6,											-- length in seconds
    msg = "Ich bin Verrückt",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:049",
    file = "MrT.mp3",
    len = 23,											-- length in seconds
    msg = "MrT : Nachtelf Irokesen",
	tag = {"Dachs", "DDdB",},
},
{
    id = "DDdB:050",
    file = "sheldon.mp3",
    len = 20,											-- length in seconds
    msg = "Dr Sheldon Cooper MD",
	tag = {"Dachs", "DDdB",},
},


-- end of media data
};
end 
