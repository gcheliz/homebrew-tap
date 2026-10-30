class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.45/gtunnel-macos-arm64-v0.2.45.tar.gz"
      sha256 "5b413cab5b595ecd793ee5e495d3e3572779ee5758597b00f5e9b113dc96d77a"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.45/gtunnel-macos-intel-v0.2.45.tar.gz"
      sha256 "109820d0e613a9e84a0c4cc1cac04b367c1c9ead0c4ad3de01503ad13b25d39a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.45/gtunnel-linux-arm64-v0.2.45.tar.gz"
      sha256 "9d372d2eec8a1db8e2e2090b1807a34729b815fc5f7a505eb0c2600d3da4b95d"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.45/gtunnel-linux-amd64-v0.2.45.tar.gz"
      sha256 "d68b758a87181cc623a3daa30766dfcf8216cc487f81b785f5947a55e362ff61"
    end
  end

  def install
    bin.install "gtunnel"
    generate_completions_from_executable(bin/"gtunnel", "completions")
  end

  def caveats
    <<~EOS
      gtunnel drives gcloud and needs a logged-in Google Cloud CLI:
        gcloud auth login
      Prerequisites and IAM: https://github.com/gcheliz/gtunnel/blob/main/docs/usage.md#getting-set-up
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gtunnel --version")
  end
end
