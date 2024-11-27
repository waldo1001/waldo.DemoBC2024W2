page 50102 HappyDragAnddropPage
{
    PageType = Card;
    SourceTable = item;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(Upload)
            {
                // FileUploadAction = ProductImageUpload;

                field(name; 'Name')
                {
                    FileUploadAction = ProductImageUpload;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            fileUploadAction(ProductImageUpload)
            {
                Caption = 'Get size of images';

                AllowMultipleFiles = true;
                AllowedFileExtensions = '.jpg', '.jpeg', '.png';

                trigger OnAction(files: List of [FileUpload])
                var
                    currentFile: FileUpload;
                    stream: InStream;
                begin
                    foreach currentFile in files do begin
                        currentFile.CreateInStream(stream, TextEncoding::UTF8);
                        // Code here to handle the file
                        Message('%1 has a length of %2', currentFile.FileName, stream.Length);
                    end;
                end;
            }
        }
    }
}