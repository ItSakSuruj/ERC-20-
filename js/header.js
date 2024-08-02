const _NETWORK_ID = 80001;
let SELECT_CONTRACT = {};

SELECT_CONTRACT[_NETWORK_ID] ={
    newtwork_name: "ALCHEMY",
    explorer_url: "https://dashboard.alchemy.com/",  // give accoring to the need like ethereum rpc anything /////
    // https://dashboard.alchemy.com/apps/grvmydwt9pp0w0ai/networks   //  modificatioin req
    STACKING: {

        sevenDays: {
            address: "",                      // different address //// token //// 

        },

        tenDays: {
            address: "",
        },

        thirtyTwoDays: {
            address: "",
        },

        ninetyDays: {
            address: "",
        },

        abi: [],

    },
    TOKEN: {
        symbol: "TBC",
        address: "",
        abi: [],
    },
} ;


let countDownGlobal; 

//wallet connection 

let web3;

let oContractToken;

let contractCall = "sevenDays";

let currentAddress;

let web3Main = new web3("https://www.ankr.com/rpc/polygon/polygon_mumbai/");
// change the rtpc check modification required 
// https://polygon-mainnet.g.alchemy.com/v2/gbvrcIrHSFW8qfO_Az0JXoG5OSojVXXY

//Create an instance of notyf
var notyf = new notyf(
    {
        duration: 3000,
        position: {x : "right" , y: "bottom"}, 

    }
);







