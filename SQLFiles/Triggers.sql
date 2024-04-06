USE ApartmentListingSystem;
GO

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

-- 2. Trigger to check Property Availability
CREATE TRIGGER Property_Availability_Check
ON Listing
FOR INSERT
AS
BEGIN
    DECLARE @PropertyID INT;

    -- Get the Property_ID being inserted
    SELECT @PropertyID = Property_ID FROM inserted;

    -- Check if the property is already rented out
    IF EXISTS (SELECT 1 FROM Rent WHERE Rent_ID = @PropertyID)
    BEGIN
        -- Property is already rented out, raise an error
        RAISERROR ('Property is already rented out', 16, 1);
        ROLLBACK TRANSACTION; -- Rollback the transaction to prevent the new listing
    END

    -- Check if the property is already sold
    IF EXISTS (SELECT 1 FROM Sell WHERE Sell_ID = @PropertyID)
    BEGIN
        -- Property is already sold, raise an error
        RAISERROR ('Property is already sold', 16, 1);
        ROLLBACK TRANSACTION; -- Rollback the transaction to prevent the new listing
    END
END;