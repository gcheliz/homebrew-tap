class Gtunnel < Formula
  desc "TUI-first CLI for GCP IAP tunnels and public URLs via a GCP relay"
  homepage "https://github.com/gcheliz/gtunnel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.48/gtunnel-macos-arm64-v0.2.48.tar.gz"
      sha256 "879dab43b262eb3062b3bc957cd5c3b048513bf0ee3f8b383955b90f35cc7105"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.48/gtunnel-macos-intel-v0.2.48.tar.gz"
      sha256 "494d0964f493e788b3ac4139aaf7bb8b8ea2ff43cbd4e88361909d3ac151b63d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.48/gtunnel-linux-arm64-v0.2.48.tar.gz"
      sha256 "7acaf2eef77702e451cef2b1f4a6baed2f13bad53aeefc80280f4a40202b7297"
    end
    on_intel do
      url "https://github.com/gcheliz/gtunnel/releases/download/v0.2.48/gtunnel-linux-amd64-v0.2.48.tar.gz"
      sha256 "02d2119930a7efced8c733c8395764bfac8c1293c64d27fb95143f5d913d54aa"
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
