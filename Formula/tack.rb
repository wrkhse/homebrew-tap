# Generated from the tack v0.1.0-rc.6 release SHA256SUMS.
class Tack < Formula
  desc "Rust CLI and daemon for running one Luau plugin in every agent"
  homepage "https://github.com/wrkhse/tack"
  version "0.1.0-rc.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wrkhse/tack/releases/download/v0.1.0-rc.6/tack-v0.1.0-rc.6-aarch64-apple-darwin.tar.gz"
      sha256 "fe70a406389952db2f3eece873b89be802a21f6ed68270765d4191beeca8cf77"
    end
    on_intel do
      url "https://github.com/wrkhse/tack/releases/download/v0.1.0-rc.6/tack-v0.1.0-rc.6-x86_64-apple-darwin.tar.gz"
      sha256 "34d5295a172d3ce9212142275d92e5346f421d3d854c172ec8e96fb2bd7f2faa"
    end
  end

  on_linux do
    url "https://github.com/wrkhse/tack/releases/download/v0.1.0-rc.6/tack-v0.1.0-rc.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "082de8429bedd3bf94f7f4f182110aa4814dcdfbea82b03909e835e7370c062f"
  end

  def install
    bin.install "tack", "tack-daemon"
  end

  test do
    assert_equal "tack 0.1.0-rc.6", shell_output("#{bin}/tack --version").strip
  end
end
