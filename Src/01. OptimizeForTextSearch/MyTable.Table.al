table 50100 MyTable
{
    DataClassification = SystemMetadata;

    fields
    {
        field(1; KeyField; Integer) { }
        field(2; Description; Text[100])
        {
            OptimizeForTextSearch = true;
        }
    }

    procedure IsTheFieldOptimizedForTextSearch(FldRef: FieldRef): Boolean
    begin
        exit(FldRef.IsOptimizedForTextSearch);
    end;

    procedure OptimizeFieldForTextSearch(): Boolean
    var
        Field: Record Field;
    begin
        Field.SetRange(TableNo, 50100);
        field.SetRange(FieldName, 'Description');
        if Field.FindFirst() then
            exit(field.OptimizeForTextSearch);

        exit(false);
    end;

}