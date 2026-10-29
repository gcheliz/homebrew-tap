class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.41/gtunnel-macos-arm64-v0.2.41.tar.gz"
      sha256 "5a4b68a4f660d434e01cf07755fc28126576ee21385c7ca3de404dfc32eeec98"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.41/gtunnel-macos-intel-v0.2.41.tar.gz"
      sha256 "e17378cc0944d951e98b5ec5453d9f835b6ec221936589ed1c4810f8a5821b32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.41/gtunnel-linux-arm64-v0.2.41.tar.gz"
      sha256 "3fd8078088c645cf314c838609f326bb6c4959f229922bb637d7da78d65b23d5"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.41/gtunnel-linux-amd64-v0.2.41.tar.gz"
      sha256 "8e020a802127e13abd159553fd672c4f96ed8846809dd59e8a6544fd4f7ad328"
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
