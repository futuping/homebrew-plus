cask 'hallelujahInputMethod' do
  version :latest
  sha256 :no_check

  url "https://github.com/futuping/homebrew-plus/releases/download/v1.5.0/hallelujahInputMethod.zip"
  name 'hallelujahInputMethod'
  homepage 'https://github.com/dongyuwei/hallelujahIM'

  pkg 'hallelujahInputMethod.pkg'

  uninstall pkgutil: [
                       'github.dongyuwei.inputmethod.hallelujahInputMethod',
                     ],
            delete:  '/Library/Input Methods/hallelujahInputMethod.app'

  zap trash: [
               '~/Library/Caches/github.dongyuwei.inputmethod.hallelujahInputMethod',
               '~/Library/Preferences/github.dongyuwei.inputmethod.hallelujahInputMethod.plist',
             ]
end
