
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /opt/local/lib/ruby/1.8/i386-solaris2
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/opt/local
exec_prefix = $(prefix)
sitedir = $(prefix)/lib/ruby/site_ruby
rubylibdir = $(libdir)/ruby/$(ruby_version)
docdir = $(datarootdir)/doc/$(PACKAGE)
dvidir = $(docdir)
datarootdir = $(prefix)/share
archdir = $(rubylibdir)/$(arch)
sbindir = $(exec_prefix)/sbin
psdir = $(docdir)
localedir = $(datarootdir)/locale
htmldir = $(docdir)
datadir = $(datarootdir)
includedir = $(prefix)/include
infodir = $(datarootdir)/info
sysconfdir = $(prefix)/etc
mandir = $(DESTDIR)/opt/local/man
libdir = $(exec_prefix)/lib
sharedstatedir = $(prefix)/com
oldincludedir = $(DESTDIR)/usr/include
pdfdir = $(docdir)
sitearchdir = $(sitelibdir)/$(sitearch)
bindir = $(exec_prefix)/bin
localstatedir = $(prefix)/var
sitelibdir = $(sitedir)/$(ruby_version)
libexecdir = $(exec_prefix)/libexec

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = extconf.h
CFLAGS   =  -fPIC -O -D_REENTRANT -I/usr/include -I/opt/local/include/db4 -I/opt/local/include  -fPIC -I. -I/opt/local/lib/ruby/1.8/i386-solaris2 -I. -I/usr/local/include/libxml2 -I/usr/local/include 
INCFLAGS = -I. -I. -I/opt/local/lib/ruby/1.8/i386-solaris2 -I. -I/usr/local/include/libxml2 -I/usr/local/include
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\" -D_REENTRANT -I/usr/include -I/opt/local/include/db4 -I/opt/local/include
CXXFLAGS = $(CFLAGS) 
DLDFLAGS = -L. -L/usr/lib -Wl,-R/usr/lib -L/opt/local/lib -Wl,-R/opt/local/lib  
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby18
RUBY_SO_NAME = ruby18
arch = i386-solaris2
sitearch = i386-solaris2
ruby_version = 1.8
ruby = /opt/local/bin/ruby18
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/ucb/install -c -o root -g root
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = /usr/ucb/install -c -o root -g root -m 444
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir) /opt/local/lib
LIBPATH =  -L'.' -L'$(libdir)' -Wl,-R'$(libdir)' -L'/opt/local/lib' -Wl,-R'/opt/local/lib'
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -lxml2 -liconv -lz -lm -lnsl -lsocket  -lpthread -ldl -lcrypt -lm -lm -lpthread -lrt  -lc
SRCS = ruby_xml_xpath_context.c ruby_xml_input_cbg.c ruby_xml_parser_context.c ruby_xml_xinclude.c ruby_xml_state.c ruby_xml_relaxng.c ruby_xml_xpath.c ruby_xml_attributes.c ruby_xml_parser.c ruby_xml_attr.c libxml.c ruby_xml_node_set.c ruby_xml_ns.c ruby_xml_dtd.c ruby_xml_xpointer.c cbg.c ruby_xml_reader.c ruby_xml_document.c ruby_xml_sax_parser.c ruby_xml_schema.c ruby_xml_xpointer_context.c ruby_xml_html_parser.c ruby_xml_xpath_object.c ruby_xml_node.c
OBJS = ruby_xml_xpath_context.o ruby_xml_input_cbg.o ruby_xml_parser_context.o ruby_xml_xinclude.o ruby_xml_state.o ruby_xml_relaxng.o ruby_xml_xpath.o ruby_xml_attributes.o ruby_xml_parser.o ruby_xml_attr.o libxml.o ruby_xml_node_set.o ruby_xml_ns.o ruby_xml_dtd.o ruby_xml_xpointer.o cbg.o ruby_xml_reader.o ruby_xml_document.o ruby_xml_sax_parser.o ruby_xml_schema.o ruby_xml_xpointer_context.o ruby_xml_html_parser.o ruby_xml_xpath_object.o ruby_xml_node.o
TARGET = libxml_ruby
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /home/joe/projects/merb_gems/joyent/gems/libxml-ruby-0.8.3/lib$(target_prefix)
RUBYARCHDIR = /home/joe/projects/merb_gems/joyent/gems/libxml-ruby-0.8.3/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS)
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h $(RUBY_EXTCONF_H)
