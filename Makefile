build:
	buck build //App:MyBuckSampleAppBinary

debug:
	buck install //App:MyBuckSampleApp --run --simulator-name 'iPhone 11'

targets:
	buck targets //...

clean:
	rm -rf **/*.xcworkspace
	rm -rf **/*.xcodeproj
	rm -rf buck-out
	rm -rf .buckd

kill_xcode:
	killall Xcode || true
	killall Simulator || true

project: clean
	buck project //App:workspace
	open App/MyBuckSampleApp.xcworkspace
