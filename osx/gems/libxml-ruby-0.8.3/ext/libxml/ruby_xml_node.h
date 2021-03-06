/* $Id: ruby_xml_node.h 348 2008-07-09 18:18:19Z cfis $ */

/* Please see the LICENSE file for copyright and distribution information */

#ifndef __RUBY_XML_NODE__
#define __RUBY_XML_NODE__

extern VALUE cXMLNode;
extern VALUE eXMLNodeSetNamespace;
extern VALUE eXMLNodeFailedModify;
extern VALUE eXMLNodeUnknownType;

void ruby_init_xml_node(void);
void ruby_xml_node_mark_common(xmlNodePtr xnode);
VALUE ruby_xml_node2_wrap(VALUE class, xmlNodePtr xnode);
VALUE check_string_or_symbol(VALUE val);
#endif
