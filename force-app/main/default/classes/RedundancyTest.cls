@isTest
public with sharing class RedundancyTest {
    public RedundancyTest() {

    }
    @isTest
    static void CheckingTest() {
        myclass demo = new myclass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
    @isTest
    static void JustCheckingTest() {
        myclass demo = new myclass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
    @isTest
    static void JustCheckingAgainTest() {
        myclass demo = new myclass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
    @isTest
    static void JustCheckingAgainSorryToBotherYouTest() {
        myclass demo = new myclass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
    @isTest
    static void SorryJustCheckingAgainTest() {
        myclass demo = new myclass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
    @isTest
    static void StillCheckingTest() {
        myclass demo = new myclass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
    @isTest
    static void StillCheckingIReallyWantToBeSureTest() {
        myclass demo = new myclass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
}
