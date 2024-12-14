using GameService as service from '../../srv/game-service';

annotate service.Student with @(
    UI.LineItem : [
     //   {
     //       $Type : 'UI.DataField',
     //       Label : 'Student ID',
     //       Value : Student_ID,
     //   },
        {
            $Type : 'UI.DataField',
            Label : 'First Name',
            Value : First_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Name',
            Value : Last_name,
        },
    ],
    UI.HeaderInfo : {
        TypeName : 'Student',
        TypeNamePlural : 'Students',
        Title : {
            $Type : 'UI.DataField',
            Value : First_name,
            Label : 'First Name'
        },
        Description : {
            $Type : 'UI.DataField',
            Value : Last_name,
            Label : 'Last Name'
        }
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralInfo',
            Label : 'Student Information', 
            Target : '@UI.FieldGroup#GeneralInfoGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'FavoritesFacet',
            Label : 'Favorite Games', 
            Target : 'to_favos/@UI.LineItem',
        }
    ]
);

annotate service.Student with @(
    UI.FieldGroup #GeneralInfoGroup : {
        $Type : 'UI.FieldGroupType',
        Label : 'Student Information', 
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Student ID',
                Value : Student_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'First Name',
                Value : First_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last Name',
                Value : Last_name,
            }
        ]
    },
    
);

annotate service.FavoriteGame with @(
    UI.HeaderInfo : {
        TypeName : 'Favorite Game',
        TypeNamePlural : 'Favorite Games',
        Title : {
            $Type : 'UI.DataField',
            Value : to_game.Name,
            Label : 'Game Name'
        },
        Description : {
            $Type : 'UI.DataField',
            Value : to_game.Genre,
            Label : 'Genre'
        }
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : to_game.Name,
            Label : 'Game Name'
        }
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'FavoriteGameDetails',
            Label : '', 
            Target : '@UI.FieldGroup#FavoriteGameDetailsGroup'
        }
    ]
);

annotate service.FavoriteGame with @(
    UI.FieldGroup #FavoriteGameDetailsGroup : {
        $Type : 'UI.FieldGroupType',
        Label : 'Game Details',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Game ID',
                Value : Game_ID
            },
            {
                $Type : 'UI.DataField',
                Label : 'Publisher',
                Value : to_game.Publisher
            },
            {
                $Type : 'UI.DataField',
                Label : 'Release Date',
                Value : to_game.Release_date
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : to_game.Description
            }
        ]
    }
);
