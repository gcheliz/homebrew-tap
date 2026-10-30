class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.46/gtunnel-macos-arm64-v0.2.46.tar.gz"
      sha256 "80076838ecde18aa744278efd1c87fd67b5e8df75acc624adaafcbf0bbaa5fdd"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.46/gtunnel-macos-intel-v0.2.46.tar.gz"
      sha256 "c17aa0dc9ac16222f8a03e73baae54ae085db84e3b4b58ef9a631be1e8bfc8f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.46/gtunnel-linux-arm64-v0.2.46.tar.gz"
      sha256 "a91edaac9cdec43943169a9a26a140e918fdf367574f1905abb6c9b2f37df43b"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.46/gtunnel-linux-amd64-v0.2.46.tar.gz"
      sha256 "292301ba3174c11d44e0d9ca929a66af3ac8694b38a450bf4b9a2a2a1ef4872f"
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
