-- 1. Trigger that automatically updates the Active_Properties column in the Lister table whenever 
--    a new property is inserted or deleted in the Property table by that Lister_ID.
CREATE TRIGGER UpdateActiveProperties
ON Property
AFTER INSERT, DELETE
AS
BEGIN
    -- Update Active_Properties for each affected Lister due to INSERT operation
    UPDATE L
    SET Active_Properties = (
        SELECT COUNT(*) 
        FROM Property P 
        WHERE P.Lister_ID = L.Lister_ID
    )
    FROM Lister L
    INNER JOIN inserted I ON L.Lister_ID = I.Lister_ID;

    -- Update Active_Properties for each affected Lister due to DELETE operation
    UPDATE L
    SET Active_Properties = (
        SELECT COUNT(*) 
        FROM Property P 
        WHERE P.Lister_ID = L.Lister_ID
    )
    FROM Lister L
    INNER JOIN deleted D ON L.Lister_ID = D.Lister_ID;

END;

-- 2. Trigger to validate phone number is of 10 digits.

-- 3. Trigger to validate Address entered is Unique