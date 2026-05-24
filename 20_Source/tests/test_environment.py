import pytest
from my_app import __version__
from my_app.__main__ import main


def test_package_version_is_available() -> None:
    assert __version__ == "0.1.0"


def test_main_prints_readiness_message(capsys: pytest.CaptureFixture[str]) -> None:
    main()

    captured = capsys.readouterr()
    assert captured.out == "my-app development container is ready\n"
