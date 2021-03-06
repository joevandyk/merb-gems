/* $Id: ruby_xml_xpath_context.h 412 2008-07-14 08:02:47Z cfis $ */

/* Please see the LICENSE file for copyright and distribution information */

#ifndef __RUBY_XML_XPATH_CONTEXT__
#define __RUBY_XML_XPATH_CONTEXT__

extern VALUE cXMLXPathContext;
void ruby_init_xml_xpath_context(void);

VALUE ruby_xml_xpath_context_register_namespaces(VALUE self, VALUE nslist);
VALUE ruby_xml_xpath_context_register_namespaces_from_node(VALUE self, VALUE node);
VALUE ruby_xml_xpath_context_find(VALUE self, VALUE xpath_expr);

#endif
