class Xcflow < Formula
  desc "Xcode Cloud workflows as JSON files in your repo"
  homepage "https://github.com/OlafAndreas/xcflow"
  url "https://github.com/OlafAndreas/xcflow/releases/download/v0.2.5/xcflow-0.2.5.tar.gz"
  sha256 "1f906977871b9463c36c843a5c3f531975e74d4c03fba513757232d998a5a8cc"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "xcflow"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/xcflow --version").strip
  end
end
