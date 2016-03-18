trigger Tshirt on Account (after insert){
For (Account acc:Trigger.new)
{
case shirtcase = new case();
shirtcase.priority = 'Medium';
shirtcase.status = 'new';
Shirtcase.AccountID = acc.id;
Insert shirtcase;

}
}