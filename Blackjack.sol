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
<<<<<<< HEAD
        uint DeckPos;
        uint Turn;
=======
        uint turn;
>>>>>>> 78fc384c5fc76ef47ca50fb9586fad4869d47661
    }

    // Game Id counter
    uint GameId;
    Game Games[];
    // number of decks
    uint NumDecks = 1;
    
    // max number of players
    uint MaxPlayers = 5;
    
    uint counter;
    constructor ()
    {
        GameId = 0;
        counter = 0;
    }

    /*
    function CreateGame() public;
    function AddPlayer(uint gameId, string name) public;
    function StartGame(uint gameId) public; // options bUseDealer
    function HitOrStand(uint gameId, uint playerId) public; // after all player decide
    function Bid(uint gameId, uint playerId) public; // 
    function ShowCards(uint gameId, uint playerId) public; // 

    function CreateDeck(uint gameId) private;
    function ShuffleDeck(uint gameId) private;
    //function RemoveFromDeck(uint [], uint) private;
    function GameLoop() private;
    function Deal() private;
    // utils
    function GenRnd(uint);
    */
<<<<<<< HEAD

=======
    
>>>>>>> 78fc384c5fc76ef47ca50fb9586fad4869d47661
    function CreateGame() public {
        GameId++;
        Games.push(new Game {
            GameId = GameId,
<<<<<<< HEAD
            Turn = 0,
            DeckPos = 0,            
=======
            turn = 0            
>>>>>>> 78fc384c5fc76ef47ca50fb9586fad4869d47661
        });
        CreateDeck(GameId); 
        ShuffleDeck(GameId);
    }

    function CreateDeck(uint gameId) private
    {
        Games[gameId].Cards = new uint[](52*NumDecks);
    }

    function ShuffleDeck(uint gameId) private
    {
        /*
        // create an array of NumDecks decks of cards (1-52)(1-52)...
        // Loop thru Cards
        // Generate a random # 0-arraysize-1
        // get the number in array from that position
        // add that to Cards
        // pop from array
        */ 
        uint sortedCards[] = new uint[](52*Numdecks);
        for (uint d=0; 1 < NumDecks; d++)
        {
            for (uint c=1; c <= 52; c++)
            {
                sortedCards[d*52+c-1]=c;
            }
        }
        for (uint i=0; i < NumDesks*52; i++)
        {
            c = GenRnd(sortedCards.length
            Games[gameId].Cards[i] = GetCardFromSorted(sortedCards, c);
            RemoveFromDeck(sortedCards, c);
        }
    }

    function GetCardFromSorted(uint [] sortedCards, uint c) private // rather slow, need to refactor
    {
        uint cc = c;
        uint x = sortedCards[cc];
        while (x == 0)
        {
            cc++;
            if (cc == c) {
                // something very bad has happened!
            }
            if (cc = sortedCards.length) {
                cc == 0;
            }
            x = sortedCards[cc];
        }
        sortedCards[cc] = 0;
        return x;
    }

    /*function RemoveFromDeck(uint [], uint)
    {

    }
    */

    function GenRnd(uint limit) private
    {
        uint rnd = uint(keccak256(abi.encodePacked(now, msg.sender, counter)));
        counter++;
        rnd = rnd % limit;
        return rnd;
    }

    function AddPlayer(uint gameId, string name) public
    {
        if (Games[gameId].Players.length == MaxPlayers)
        {
            return 0;
        }
        Games[gameId].Players.push(new Player {
            Name = name;
            Amount = 0;
        })
<<<<<<< HEAD
        return Games[gameId].Players.length;
    }

    function Bid(uint gameId, uint playerId) public payable {
        // Don't gamble with a ton of money!
        require(msg.value > 0 && msg.value <= 1 ether, "You must gamble with some ether, but no more than one.");
        Games[gameId].Players[playerId].Amount += msg.value;
    }

    function StartGame(uint gameId) public
    {
        require(Games[gameId].Players.length < 1 ,"No one has asked to join this game!");
        // Add Dealer
        Games[gameId].Players.push(new Player{
            Name = "Dealer"
        })
        Deal(gameId);
        GameLoop();
    }

    function Deal(uint GameId) private
    {
        for (uint c = 0; c < 2; c++) // two cards
        {
            for (uint i = 0; i < Games[gameId].Players.length; i++) // each player
            {
                uint card = Draw(gameId);
                Games[gameId].Players[i].Cards.push(card);
            }
        }
    }

    function ShowCards(gameId) public
    {
        // Build an arry where the firt index is the number of players. Followed by: player 0 card count, cards, player 1 card count, cards, ...
        uint [] out;
        out.push(Games[GameId].Player.length);
        for (uint p = 0; p <= Games[GameId].Player.length; p++)
        {
            out.push(Games[GameId].Player[p].Cards.length);
            for (uint c = 0; c < Games[GameId].Player[p].Cards.length; c++)
            {
                out.push(Games[GameId].Player[p].Cards{c]});
            }
        }
        return out;
    }

    function Draw(uint gameId)
    {
        return Games[gameId].Cards[DeckPos++];
    }

    function GameLoop() private {}
    
=======
    }

    function Bid(uint gameId, uint playerId) public payable {
        // Don't gamble with a ton of money!
        require(msg.value > 0 && msg.value <= 1 ether, "You must gamble with some ether, but no more than one.");
        Games[gameId].Players[playerId].Amount += msg.value;
    }

    function StartGame(uint gameId) public
    {
        require(Games[gameId].Players.length != 0,"No one has asked to join this game!");
        Deal();
        GameLoop();
    }

    function Deal() private
    {}
    function GameLoop() private {}
    function ShowCards() {}
>>>>>>> 78fc384c5fc76ef47ca50fb9586fad4869d47661

}


