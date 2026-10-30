class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.66/gtunnel-macos-arm64-v0.2.66.tar.gz"
      sha256 "8423f53eca3043fec1a350772d2766e08bca486a96906212500b2528dd4eae2a"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.66/gtunnel-macos-intel-v0.2.66.tar.gz"
      sha256 "47992715a319164c5f2ae0456df0606e06c9ef644c8fc71ada4c1aea6ccde80e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.66/gtunnel-linux-arm64-v0.2.66.tar.gz"
      sha256 "1a8bbb224f3664d3173ac502747e343b1dbcfe2b849ee95d998f49e8ebb4c8ff"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.66/gtunnel-linux-amd64-v0.2.66.tar.gz"
      sha256 "79ccdf8afabf41ede86d0f1655dc4a403ed238941cecf7613d0353d64e22f9ba"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
