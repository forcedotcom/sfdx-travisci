@isTest
private class mytest {

    @isTest
    static void myUnitTest() {
        myclass demo = new myclass();

        System.assertEquals(demo.getAppVersion(), '1.0.0efsfsfsfsfsf TESTing again sddadda');
        System.assertEquals(demo.getAppVersion(), '2.0.0efsfsfsfsfsf TESTing again sddadda');
        System.assertEquals(demo.getAppVersion(), 'This is testing auto merge');

        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }
}
