import re


def extract_chinese(text: str) -> list:
    """
    获取字符串中中文
    :param text:
    :return:
    """
    pattern = re.compile(r'[\u4e00-\u9fff]+')
    chinese_chars = re.findall(pattern, text)
    return chinese_chars


def str2unicode(text: str, encode="unicode_escape") -> bytes:
    """
    文本转unicode
    :param text:
    :param encode:
    :return:
    """
    return text.encode(encode)


def unicode2str(b:bytes, encode="unicode_escape") -> str:
    """
    unicode转回去
    :param b:
    :param encode:
    :return:
    """
    return b.decode(encode)
