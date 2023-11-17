
declare function local:getTransactionDetails($transID as xs:string) as element(Transaction) {
    let $transactions := doc("C:/Users/aniru/Desktop/XMLProj/XML-Group-Project/Transactions.xml")/Transactions/Transaction
    return $transactions[@id = $transID]
};

let $transID := "3"
return local:getTransactionDetails($transID)
