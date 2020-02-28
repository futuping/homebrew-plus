cask 'hallelujahInputMethod' do
  version :latest
  sha256 :no_check

  url "https://dl.bintray.com/rime/squirrel/Squirrel-#{version}.zip"
  name 'hallelujahInputMethod'
  homepage 'https://github.com/dongyuwei/hallelujahIM'

  pkg 'hallelujah-20200226213814.pkg'

  uninstall pkgutil: [
                       'github.dongyuwei.inputmethod.hallelujahInputMethod',
                     ],
            delete:  '/Library/Input Methods/hallelujahInputMethod.app'

  zap trash: [
               '~/Library/Caches/im.rime.inputmethod.Squirrel',
               '~/Library/Preferences/github.dongyuwei.inputmethod.hallelujahInputMethod.plist',
             ]
end
