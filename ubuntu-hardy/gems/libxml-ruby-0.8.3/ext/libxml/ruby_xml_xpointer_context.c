/* $Id: ruby_xml_xpointer_context.c 461 2008-07-15 21:35:56Z cfis $ */

/* Please see the LICENSE file for copyright and distribution information */

#include "ruby_libxml.h"
#include "ruby_xml_xpointer_context.h"

VALUE cXMLXPointerContext;
VALUE eXMLXPointerContextInvalidPath;

// Rdoc needs to know
#ifdef RDOC_NEVER_DEFINED
  mLibXML = rb_define_module("LibXML");
  mXML = rb_define_module_under(mLibXML, "XML");
  cXMLXPointer = rb_define_class_under(mXML, "XPointer", rb_cObject);
#endif

void
ruby_init_xml_xpointer_context(void) {
  cXMLXPointerContext = rb_define_class_under(cXMLXPointer, "Context", cXMLXPathContext);
  eXMLXPointerContextInvalidPath = rb_define_class_under(cXMLXPointerContext, "InvalidPath", eXMLError);
}
