String makePhoneLink(String phone) =>
    '+' + phone.replaceAll('x', ',').replaceAll(RegExp(r'[^,\d]+'), '');
