/* $Id: libxml.c 489 2008-07-21 22:41:11Z cfis $ */

/* Please see the LICENSE file for copyright and distribution information */

#include "ruby_libxml.h"

VALUE mLibXML;
VALUE mXML;
VALUE eXMLError;


#if defined(_WIN32)
__declspec(dllexport) 
#endif

void
Init_libxml_ruby(void) {
  /* Some libxml memory goo that should be done before anything else */
#ifdef NONE
  xmlMemGet((xmlFreeFunc *) & freeFunc,
            (xmlMallocFunc *) & mallocFunc,
            (xmlReallocFunc *) & reallocFunc,
            (xmlStrdupFunc *) & strdupFunc);

  if (xmlMemSetup((xmlFreeFunc)RubyMemFree, (xmlMallocFunc)RubyMemMalloc,
                  (xmlReallocFunc)RubyMemRealloc, (xmlStrdupFunc)RubyMemStrdup) != 0)
    rb_fatal("could not install the memory handlers for libxml");
#endif

  mLibXML = rb_define_module("LibXML");
  mXML = rb_define_module_under(mLibXML, "XML");
  eXMLError = rb_define_class_under(mXML, "Error", rb_eRuntimeError);

  rb_define_const(mXML, "XML_NAMESPACE", rb_str_new2((const char*)XML_XML_NAMESPACE));

  ruby_init_state();
  ruby_init_parser();  
  ruby_init_xml_parser_context();
  ruby_init_xml_attributes();
  ruby_init_xml_attr();
  ruby_init_xml_document();
  ruby_init_xml_node();
  ruby_init_xml_node_set();
  ruby_init_xml_ns();
  ruby_init_xml_sax_parser();
  ruby_init_xml_xinclude();
  ruby_init_xml_xpath();
  ruby_init_xml_xpath_context();
  ruby_init_xml_xpointer();
  ruby_init_xml_xpointer_context();
  ruby_init_html_parser();
  ruby_init_input_callbacks(); 
  ruby_init_xml_dtd();         
  ruby_init_xml_schema();      
  ruby_init_xml_relaxng();      
  ruby_init_xml_reader();      

  ruby_xml_parser_default_substitute_entities_set(cXMLParser, Qtrue);
  ruby_xml_parser_default_load_external_dtd_set(cXMLParser, Qtrue);
}
