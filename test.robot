*** Settings ***
Documentation     Sanity tests for CR Snap APIs
...
...  Do NOT include these tests in any run (by adding tags to them)
#Test Setup    AppiumLibrary.Launch Application
Test Teardown    Close Application
Library    AppiumLibrary
Library    OperatingSystem

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
#Set absolute path to your ${ANDROID_APP}
${ANDROID_APP}                AbsPath to Your/demo.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=13}

*** Test Cases ***
Should send keys to search box and then check the value
  Open Test Application

*** Keywords ***
Open Test Application
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}  appPackage=io.appium.android.apis  appActivity=.app.SearchInvoke