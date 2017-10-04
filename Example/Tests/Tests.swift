// https://github.com/Quick/Quick

import Quick
import Nimble
import EnumCases

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("these will fail") {

            it("can do maths") {
                expect(StringEnum.none) == StringEnum.all[1]
            }

            context("these will pass") {

                it("can do maths") {
                    expect([StringEnum.none, .first, .second]) == StringEnum.all
                }

                it("can read") {
                    expect("🐮") == "🐮"
                }

                it("will eventually pass") {
                    var time = "passing"

                    DispatchQueue.main.async {
                        time = "done"
                    }

                    waitUntil { done in
                        Thread.sleep(forTimeInterval: 0.5)
                        expect(time) == "done"

                        done()
                    }
                }
            }
        }
    }
}
