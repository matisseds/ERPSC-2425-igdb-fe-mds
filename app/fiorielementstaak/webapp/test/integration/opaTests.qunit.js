sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'studentsoverview/fiorielementstaak/test/integration/FirstJourney',
		'studentsoverview/fiorielementstaak/test/integration/pages/StudentList',
		'studentsoverview/fiorielementstaak/test/integration/pages/StudentObjectPage',
		'studentsoverview/fiorielementstaak/test/integration/pages/FavoriteGameObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage, FavoriteGameObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('studentsoverview/fiorielementstaak') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage,
					onTheFavoriteGameObjectPage: FavoriteGameObjectPage
                }
            },
            opaJourney.run
        );
    }
);