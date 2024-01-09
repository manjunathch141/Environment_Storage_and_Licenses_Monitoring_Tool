/**
 * Class providing common database query support for abstracting and encapsulating query logic
 **/
public class UsersSelector extends fflib_SObjectSelector
{    
    public List<Schema.SObjectField> getSObjectFieldList()
	{
		return new List<Schema.SObjectField>
		{
				User.AccountID,
				User.City,
				User.ContactId,
				User.Country,
				User.CreatedDate,
                User.Email,
				User.Fax,
				User.FullPhotoUrl,
				User.FirstName,
				User.Id,
				User.IsActive,
                User.MobilePhone,
				User.Name,
                User.State,
				User.Title,
				User.Username,
				User.usertype
         };
    }
	
	public Schema.SObjectType getSObjectType()
	{
		return User.sObjectType;
	}
    /**
		 * selectByActive
		 *
		 * @description Query User records by IsActive
		 * @return Returns User records
		 */
    
    public Database.QueryLocator selectByActive()
	{	
        fflib_QueryFactory queryFactoryInstance = newQueryFactory(false);
     	queryFactoryInstance.selectField('Id');
        queryFactoryInstance.setCondition('User.IsActive = true ' );
        queryFactoryInstance.setLimit(1);
		return Database.getQueryLocator(queryFactoryInstance.toSOQL());
	}
}