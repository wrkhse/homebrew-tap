# Hand-maintained from atelier v0.2.0-rc.2 SHA256SUMS until the release job
# generates this formula automatically.
class Atelier < Formula
  desc "CI engine for monorepos: gate presets on moon, one check per gate"
  homepage "https://github.com/wrkhse/atelier"
  version "0.2.0-rc.2"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/wrkhse/atelier/releases/download/v0.2.0-rc.2/atelier-v0.2.0-rc.2-darwin-arm64.tar.gz"
      sha256 "8d7d2d523be0e66fa18cff5f5287fd166c7bdd28d100b2167d0dcc9947d486c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/wrkhse/atelier/releases/download/v0.2.0-rc.2/atelier-v0.2.0-rc.2-linux-x64.tar.gz"
      sha256 "e6b030f24d0006720316379c4bed81c2a9170444f2b2c22b631f0aee148fe460"
    end
  end

  def install
    bin.install "bin/atelier-reporter", "bin/atelier-metrics"
    pkgshare.install "LICENSE"
  end

  def caveats
    "Both binaries come from one atelier release."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atelier-metrics --version")
    assert_path_exists bin/"atelier-reporter"
  end
end
