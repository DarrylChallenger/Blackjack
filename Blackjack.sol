pragma solidity ^0.4.24;

contract Blackjack {
    // player: name, cards, amount
    struct Player {
        string Name;
        uint CardsInHand[32]; // max # cards is actually 21. This array will have a val between 1-52 for each card, each suit (C, H, D, S)
        uint NumCardsInHand = 0;
        uint Amount = 0;
    }

    // Game
    struct Game {
        Player Players[];
        uint Id;
        bool UsesDealer; // other options...
        uint Cards[]; // (memory?) will have a stack of cards randomly generated. The size of the array will be 52 * NumDecks
    }

    // Game Id counter
    uint GameId
    Game Games[];
    // number of decks
    uint NumDecks = 1;
    
    // max number of players
    uint MaxPlayers = 5;
    // players
    
    constructor ()
    {
        GameId = 0;
    }

    function CreateGame() public;
    function AddPlayer(uint gameId, string name) public;
    function StartGame(uint gameId) public; // options bUseDealer
    function HitOrStand(uint gameId, uint playerId) public; // after all player decide
    function Bid(uint gameId, uint playerId) public; // 

    function GameLoop() private;
    function CreateDeck(uint gameId) private;
    function ShuffleDeck(uint gameId) private;
    function Deal() private;
    
    function CreateGame() public{
        GameId++;
        Games.push(new Game {
            GameId = GameId            
        });
        CreateDeck(GameId); 
        ShuffleDeck(GameId);
    }

    function CreateDeck(uint gameId)
    {
        Games[gameId].Cards = new uint[](52*NumDecks);
    }

    function ShuffleDeck(uint gameId)
    {
        /*
        // create an array of NumDecks decks of cards (1-52)(1-52)...
        // Loop thru Cards
        // Generate a random # 0-arraysize
        // get the number in array from that position
        // add that to Cards
        // pop from array
        */ 
    }
}


