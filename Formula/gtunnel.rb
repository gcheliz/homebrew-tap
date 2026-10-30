class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.52/gtunnel-macos-arm64-v0.2.52.tar.gz"
      sha256 "39019a9f2719d5fed96acb8154b96d3fd08a7717b6a31f96151eaff4e7e32c65"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.52/gtunnel-macos-intel-v0.2.52.tar.gz"
      sha256 "534b1668238060542589e1d229576e4c78d8ca04e9690b6446098e845b567f4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.52/gtunnel-linux-arm64-v0.2.52.tar.gz"
      sha256 "06228c178ab9698823e9d5443f12bf6a69b353fc4e05b8e1a3fbb694f0270455"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.52/gtunnel-linux-amd64-v0.2.52.tar.gz"
      sha256 "45063c96545e29a48b1607fc8986f391e215642d5be43245e7965f5d4254680a"
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
