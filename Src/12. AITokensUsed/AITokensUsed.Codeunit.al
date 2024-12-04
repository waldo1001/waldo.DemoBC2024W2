// codeunit 50113 "AITokensUsed"
// {
//     // Tokens will be counted per session
//     procedure ThrowErrorOfTooManyTokensUsed(): Integer
//     begin
//         if SessionInformation.AITokensUsed > 100 then
//             Error('Too many tokens used');
//     end;
// }