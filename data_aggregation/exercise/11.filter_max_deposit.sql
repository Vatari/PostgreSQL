SELECT magic_wand_creator,
       max(deposit_amount) AS "Max Deposit Amount"
FROM wizard_deposits
GROUP BY magic_wand_creator
HAVING max(deposit_amount) NOT BETWEEN 20000 AND 40000
ORDER BY "Max Deposit Amount" DESC
LIMIT 3;