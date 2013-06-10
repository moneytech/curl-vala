/*
 * This file is part of the vala-curl project.
 * 
 * Copyright 2013 Richard Wiedenhöft <richard.wiedenhoeft@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
[CCode(cheader_filename="curl/curl.h",lower_case_cprefix="",cprefix="")]
namespace Native.Curl {
	/* Types */

	[SimpleType]
	public struct CURL {}

	/* Functions */

	public CURL* curl_easy_init();
	public void curl_easy_cleanup(CURL* handle);
	public int curl_easy_perform(CURL* handle);
	public char* curl_easy_strerror(int errorcode);
	public void curl_free(char* ptr);
	[CCode(sentinel="")]
	public int curl_easy_setopt(CURL* handle, int option, ...);

	/* Constants */
	
	public const int CURLUSESSL_ALL;
	public const int CURLUSESSL_NONE;

	public const int CURLOPT_FILE; //Implemented
	public const int CURLOPT_URL; //Implemented
	public const int CURLOPT_PORT;
	public const int CURLOPT_PROXY;
	public const int CURLOPT_USERPWD;
	public const int CURLOPT_PROXYUSERPWD;
	public const int CURLOPT_RANGE;
	public const int CURLOPT_INFILE; //Implemented
	public const int CURLOPT_ERRORBUFFER;
	public const int CURLOPT_WRITEFUNCTION; //Implemented
	public const int CURLOPT_READFUNCTION;
	public const int CURLOPT_TIMEOUT;
	public const int CURLOPT_INFILESIZE;
	public const int CURLOPT_POSTFIELDS;
	public const int CURLOPT_REFERER;
	public const int CURLOPT_FTPPORT;
	public const int CURLOPT_USERAGENT;
	public const int CURLOPT_LOW_SPEED_LIMIT;
	public const int CURLOPT_LOW_SPEED_TIME;
	public const int CURLOPT_RESUME_FROM;
	public const int CURLOPT_COOKIE;
	public const int CURLOPT_HTTPHEADER;
	public const int CURLOPT_HTTPPOST;
	public const int CURLOPT_SSLCERT;
	public const int CURLOPT_KEYPASSWD;
	public const int CURLOPT_CRLF;
	public const int CURLOPT_QUOTE;
	public const int CURLOPT_WRITEHEADER;
	public const int CURLOPT_COOKIEFILE;
	public const int CURLOPT_SSLVERSION;
	public const int CURLOPT_TIMECONDITION;
	public const int CURLOPT_TIMEVALUE;
	public const int CURLOPT_CUSTOMREQUEST;
	public const int CURLOPT_STDERR;
	public const int CURLOPT_POSTQUOTE;
	public const int CURLOPT_WRITEINFO;
	public const int CURLOPT_VERBOSE;
	public const int CURLOPT_HEADER;
	public const int CURLOPT_NOPROGRESS;
	public const int CURLOPT_NOBODY;
	public const int CURLOPT_FAILONERROR;
	public const int CURLOPT_UPLOAD;
	public const int CURLOPT_POST;
	public const int CURLOPT_DIRLISTONLY;
	public const int CURLOPT_APPEND;
	public const int CURLOPT_NETRC;
	public const int CURLOPT_FOLLOWLOCATION; //Implemented
	public const int CURLOPT_TRANSFERTEXT;
	public const int CURLOPT_PUT;
	public const int CURLOPT_PROGRESSFUNCTION;
	public const int CURLOPT_PROGRESSDATA;
	public const int CURLOPT_AUTOREFERER;
	public const int CURLOPT_PROXYPORT;
	public const int CURLOPT_POSTFIELDSIZE;
	public const int CURLOPT_HTTPPROXYTUNNEL;
	public const int CURLOPT_INTERFACE;
	public const int CURLOPT_KRBLEVEL;
	public const int CURLOPT_SSL_VERIFYPEER;
	public const int CURLOPT_CAINFO;
	public const int CURLOPT_MAXREDIRS;
	public const int CURLOPT_FILETIME;
	public const int CURLOPT_TELNETOPTIONS;
	public const int CURLOPT_MAXCONNECTS;
	public const int CURLOPT_CLOSEPOLICY;
	public const int CURLOPT_FRESH_CONNECT;
	public const int CURLOPT_FORBID_REUSE;
	public const int CURLOPT_RANDOM_FILE;
	public const int CURLOPT_EGDSOCKET;
	public const int CURLOPT_CONNECTTIMEOUT;
	public const int CURLOPT_HEADERFUNCTION;
	public const int CURLOPT_HTTPGET;
	public const int CURLOPT_SSL_VERIFYHOST;
	public const int CURLOPT_COOKIEJAR;
	public const int CURLOPT_SSL_CIPHER_LIST;
	public const int CURLOPT_HTTP_VERSION;
	public const int CURLOPT_FTP_USE_EPSV;
	public const int CURLOPT_SSLCERTTYPE;
	public const int CURLOPT_SSLKEY;
	public const int CURLOPT_SSLKEYTYPE;
	public const int CURLOPT_SSLENGINE;
	public const int CURLOPT_SSLENGINE_DEFAULT;
	public const int CURLOPT_DNS_USE_GLOBAL_CACHE;
	public const int CURLOPT_DNS_CACHE_TIMEOUT;
	public const int CURLOPT_PREQUOTE;
	public const int CURLOPT_DEBUGFUNCTION;
	public const int CURLOPT_DEBUGDATA;
	public const int CURLOPT_COOKIESESSION;
	public const int CURLOPT_CAPATH;
	public const int CURLOPT_BUFFERSIZE;
	public const int CURLOPT_NOSIGNAL;
	public const int CURLOPT_SHARE;
	public const int CURLOPT_PROXYTYPE;
	public const int CURLOPT_ACCEPT_ENCODING;
	public const int CURLOPT_PRIVATE;
	public const int CURLOPT_HTTP200ALIASES;
	public const int CURLOPT_UNRESTRICTED_AUTH;
	public const int CURLOPT_FTP_USE_EPRT;
	public const int CURLOPT_HTTPAUTH;
	public const int CURLOPT_SSL_CTX_FUNCTION;
	public const int CURLOPT_SSL_CTX_DATA;
	public const int CURLOPT_FTP_CREATE_MISSING_DIRS;
	public const int CURLOPT_PROXYAUTH;
	public const int CURLOPT_FTP_RESPONSE_TIMEOUT;
	public const int CURLOPT_IPRESOLVE;
	public const int CURLOPT_MAXFILESIZE;
	public const int CURLOPT_INFILESIZE_LARGE;
	public const int CURLOPT_RESUME_FROM_LARGE;
	public const int CURLOPT_MAXFILESIZE_LARGE;
	public const int CURLOPT_NETRC_FILE;
	public const int CURLOPT_USE_SSL; //Implemented
	public const int CURLOPT_POSTFIELDSIZE_LARGE;
	public const int CURLOPT_TCP_NODELAY;
	public const int CURLOPT_FTPSSLAUTH;
	public const int CURLOPT_IOCTLFUNCTION;
	public const int CURLOPT_IOCTLDATA;
	public const int CURLOPT_FTP_ACCOUNT;
	public const int CURLOPT_COOKIELIST;
	public const int CURLOPT_IGNORE_CONTENT_LENGTH;
	public const int CURLOPT_FTP_SKIP_PASV_IP;
	public const int CURLOPT_FTP_FILEMETHOD;
	public const int CURLOPT_LOCALPORT;
	public const int CURLOPT_LOCALPORTRANGE;
	public const int CURLOPT_CONNECT_ONLY;
	public const int CURLOPT_CONV_FROM_NETWORK_FUNCTION;
	public const int CURLOPT_CONV_TO_NETWORK_FUNCTION;
	public const int CURLOPT_CONV_FROM_UTF8_FUNCTION;
	public const int CURLOPT_MAX_SEND_SPEED_LARGE;
	public const int CURLOPT_MAX_RECV_SPEED_LARGE;
	public const int CURLOPT_FTP_ALTERNATIVE_TO_USER;
	public const int CURLOPT_SOCKOPTFUNCTION;
	public const int CURLOPT_SOCKOPTDATA;
	public const int CURLOPT_SSL_SESSIONID_CACHE;
	public const int CURLOPT_SSH_AUTH_TYPES;
	public const int CURLOPT_SSH_PUBLIC_KEYFILE;
	public const int CURLOPT_SSH_PRIVATE_KEYFILE;
	public const int CURLOPT_FTP_SSL_CCC;
	public const int CURLOPT_TIMEOUT_MS;
	public const int CURLOPT_CONNECTTIMEOUT_MS;
	public const int CURLOPT_HTTP_TRANSFER_DECODING;
	public const int CURLOPT_HTTP_CONTENT_DECODING;
	public const int CURLOPT_NEW_FILE_PERMS;
	public const int CURLOPT_NEW_DIRECTORY_PERMS;
	public const int CURLOPT_POSTREDIR;
	public const int CURLOPT_SSH_HOST_PUBLIC_KEY_MD5;
	public const int CURLOPT_OPENSOCKETFUNCTION;
	public const int CURLOPT_OPENSOCKETDATA;
	public const int CURLOPT_COPYPOSTFIELDS;
	public const int CURLOPT_PROXY_TRANSFER_MODE;
	public const int CURLOPT_SEEKFUNCTION;
	public const int CURLOPT_SEEKDATA;
	public const int CURLOPT_CRLFILE;
	public const int CURLOPT_ISSUERCERT;
	public const int CURLOPT_ADDRESS_SCOPE;
	public const int CURLOPT_CERTINFO;
	public const int CURLOPT_USERNAME; //Implemented
	public const int CURLOPT_PASSWORD; //Implemented
	public const int CURLOPT_PROXYUSERNAME;
	public const int CURLOPT_PROXYPASSWORD;
	public const int CURLOPT_NOPROXY;
	public const int CURLOPT_TFTP_BLKSIZE;
	public const int CURLOPT_SOCKS5_GSSAPI_SERVICE;
	public const int CURLOPT_SOCKS5_GSSAPI_NEC;
	public const int CURLOPT_PROTOCOLS;
	public const int CURLOPT_REDIR_PROTOCOLS;
	public const int CURLOPT_SSH_KNOWNHOSTS;
	public const int CURLOPT_SSH_KEYFUNCTION;
	public const int CURLOPT_SSH_KEYDATA;
	public const int CURLOPT_MAIL_FROM; //Implemented
	public const int CURLOPT_MAIL_RCPT; //Implemented
	public const int CURLOPT_FTP_USE_PRET;
	public const int CURLOPT_RTSP_REQUEST;
	public const int CURLOPT_RTSP_SESSION_ID;
	public const int CURLOPT_RTSP_STREAM_URI;
	public const int CURLOPT_RTSP_TRANSPORT;
	public const int CURLOPT_RTSP_CLIENT_CSEQ;
	public const int CURLOPT_RTSP_SERVER_CSEQ;
	public const int CURLOPT_INTERLEAVEDATA;
	public const int CURLOPT_INTERLEAVEFUNCTION;
	public const int CURLOPT_WILDCARDMATCH;
	public const int CURLOPT_CHUNK_BGN_FUNCTION;
	public const int CURLOPT_CHUNK_END_FUNCTION;
	public const int CURLOPT_FNMATCH_FUNCTION;
	public const int CURLOPT_CHUNK_DATA;
	public const int CURLOPT_FNMATCH_DATA;
	public const int CURLOPT_RESOLVE;
	public const int CURLOPT_TLSAUTH_USERNAME;
	public const int CURLOPT_TLSAUTH_PASSWORD;
	public const int CURLOPT_TLSAUTH_TYPE;
	public const int CURLOPT_TRANSFER_ENCODING;
	public const int CURLOPT_CLOSESOCKETFUNCTION;
	public const int CURLOPT_CLOSESOCKETDATA;
	public const int CURLOPT_GSSAPI_DELEGATION;
	public const int CURLOPT_DNS_SERVERS;
	public const int CURLOPT_ACCEPTTIMEOUT_MS;
	public const int CURLOPT_TCP_KEEPALIVE;
	public const int CURLOPT_TCP_KEEPIDLE;
	public const int CURLOPT_TCP_KEEPINTVL;
	public const int CURLOPT_SSL_OPTIONS;
	public const int CURLOPT_MAIL_AUTH;
}
