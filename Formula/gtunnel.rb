class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.49/gtunnel-macos-arm64-v0.2.49.tar.gz"
      sha256 "a94d2a2eed6865aeaa70e8582ce835a39d86d3cb4f19ff1d1c7ff6e9715385ae"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.49/gtunnel-macos-intel-v0.2.49.tar.gz"
      sha256 "4388b49d0e326eaa3e223cf7e96611d989971aa5442b281a71b507ab3fdf8ccd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.49/gtunnel-linux-arm64-v0.2.49.tar.gz"
      sha256 "40a9b4f2db60d47480db2df699e085f3460d850ec64d997496034d52038d8987"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.49/gtunnel-linux-amd64-v0.2.49.tar.gz"
      sha256 "7b88d002d9c2fac54ea4c782525c185215c438866d72610c5d1ca5887c7fc9df"
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
