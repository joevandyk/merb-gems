/* $Id: ruby_xml_document.h 304 2008-07-02 17:42:41Z cfis $ */

/* Please see the LICENSE file for copyright and distribution information */

#ifndef __RUBY_XML_DOCUMENT__
#define __RUBY_XML_DOCUMENT__

extern VALUE cXMLDocument;

typedef struct rxp_document {
  xmlDocPtr doc;   /* Tree/DOM interface */
  int data_type;   /* The data type referenced by *data */
  void *data;      /* Pointer to an external structure of options */
} ruby_xml_document_t;

VALUE ruby_xml_document_filename_get(VALUE self);
VALUE ruby_xml_document_new_native(VALUE class, VALUE xmlver);
void  ruby_xml_document_free(ruby_xml_document_t *rxd);
VALUE ruby_xml_document_root_get(VALUE self);
void  ruby_init_xml_document(void);

#if defined(_WIN32)
__declspec(dllexport) 
#endif
VALUE ruby_xml_document_wrap(xmlDocPtr xnode);

#endif
