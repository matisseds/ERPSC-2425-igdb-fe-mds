using GameService as service from '../../srv/game-service';

annotate service.Student with @(
    UI.LineItem : [
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
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralInfo',
            Label : 'General Information',
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
    }
);

annotate service.FavoriteGame with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Game_ID,
            Label : 'Game ID',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Name,
            Label : 'Game Name',
        }
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'FavoriteGameDetails',
            Label : 'Favorite Game Details',
            Target : '@UI.FieldGroup#FavoriteGameDetailsGroup',
        }
    ]
);

annotate service.FavoriteGame with @(
    UI.FieldGroup #FavoriteGameDetailsGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Game ID',
                Value : Game_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Game Name',
                Value : to_game.Name,
            }
        ]
    }
);

annotate service.Game with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Game_ID,
            Label : 'Game ID',
        },
        {
            $Type : 'UI.DataField',
            Value : Name,
            Label : 'Game Name',
        },
        {
            $Type : 'UI.DataField',
            Value : Genre,
            Label : 'Genre',
        },
        {
            $Type : 'UI.DataField',
            Value : Publisher,
            Label : 'Publisher',
        },
        {
            $Type : 'UI.DataField',
            Value : Release_date,
            Label : 'Release Date',
        }
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GameDetailsFacet',
            Label : 'Game Details',
            Target : '@UI.FieldGroup#GameDetailsGroup',
        }
    ]
);

annotate service.Game with @(
    UI.FieldGroup #GameDetailsGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Game ID',
                Value : Game_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Game Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Genre',
                Value : Genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Publisher',
                Value : Publisher,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Release Date',
                Value : Release_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            }
        ]
    }
);
