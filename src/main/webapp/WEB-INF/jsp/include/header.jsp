<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>트래빗(TREBIT) Config Server</title>
</head>
<!--begin::Web font -->
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<!--end::Web font -->
<!--begin::Base Styles -->
<!--begin::Page Vendors -->
<link href="<%=request.getContextPath()%>/assets/vendors/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
<!--end::Page Vendors -->
<link href="<%=request.getContextPath()%>/assets/vendors/base/vendors.bundle.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/assets/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css" />
<!--end::Base Styles -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/images/favicon.ico" />
<script src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
<!--begin::Base Scripts -->
<script src="<%=request.getContextPath()%>/assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>
<!--end::Base Scripts -->
<!--begin::Page Vendors -->
<script src="<%=request.getContextPath()%>/assets/vendors/custom/fullcalendar/fullcalendar.bundle.js" type="text/javascript"></script>
<!--end::Page Vendors -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<script src="<%=request.getContextPath()%>/js/sweetalert2.all.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sweetalert2.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/config_server.css" type="text/css" />
<script src="<%=request.getContextPath()%>/js/common/date-util.js"></script>

<div class="modal_bg"></div>
<body class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default">
    <!-- begin:: Page -->
    <div class="m-grid m-grid--hor m-grid--root m-page">
        <!-- BEGIN: Header -->
        <header class="m-grid__item    m-header " data-minimize-offset="200" data-minimize-mobile-offset="200">
            <div class="m-container m-container--fluid m-container--full-height">
                <div class="m-stack m-stack--ver m-stack--desktop">
                    <!-- BEGIN: Brand -->
                    <div class="m-stack__item m-brand  m-brand--skin-dark ">
                        <div class="m-stack m-stack--ver m-stack--general">
                            <div class="m-stack__item m-stack__item--middle m-brand__logo">
                                <a href="/main" class="m-brand__logo-wrapper">
									<img alt="" src="<%=request.getContextPath()%>/images/trebit_ci_color.png"/>
								</a>
                            </div>
                            <div class="m-stack__item m-stack__item--middle m-brand__tools">
                                <!-- BEGIN: Left Aside Minimize Toggle -->
                                <a href="javascript:;" id="m_aside_left_minimize_toggle" class="m-brand__icon m-brand__toggler m-brand__toggler--left m--visible-desktop-inline-block">
										<span></span>
									</a>
                                <!-- END -->
                                <!-- BEGIN: Responsive Aside Left Menu Toggler -->
                                <a href="javascript:;" id="m_aside_left_offcanvas_toggle" class="m-brand__icon m-brand__toggler m-brand__toggler--left m--visible-tablet-and-mobile-inline-block">
										<span></span>
									</a>
                                <!-- END -->
                                <!-- BEGIN: Responsive Header Menu Toggler -->
                                <!-- END -->
                                <!-- BEGIN: Topbar Toggler -->
                                <!-- BEGIN: Topbar Toggler -->
                            </div>
                        </div>
                    </div>
                    <!-- END: Brand -->
                </div>
            </div>
        </header>
        <!-- END: Header -->
        <!-- begin::Body -->
        <div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">
            <!-- BEGIN: Left Aside -->
            <button class="m-aside-left-close  m-aside-left-close--skin-dark " id="m_aside_left_close_btn">
					<i class="la la-close"></i>
				</button>
            <div id="m_aside_left" class="m-grid__item	m-aside-left  m-aside-left--skin-dark ">
                <!-- BEGIN: Aside Menu -->
				<%
					String  id = "";
					try {
						id = (String) session.getAttribute("id");
						if(id != null && !"".equals(id)) { %>
                            <div id="m_ver_menu" class="m-aside-menu  m-aside-menu--skin-dark m-aside-menu--submenu-skin-dark " data-menu-vertical="true" data-menu-scrollable="false" data-menu-dropdown-timeout="500">
                                <ul class="m-menu__nav  m-menu__nav--dropdown-submenu-arrow ">
                                    <li class="m-menu__item  m-menu__item--active" aria-haspopup="true">
                                        <a href="/main" class="m-menu__link ">
                                            <i class="m-menu__link-icon flaticon-line-graph"></i>
                                            <span class="m-menu__link-title">
                                                <span class="m-menu__link-wrap">
                                                    <span class="m-menu__link-text">
                                                        관리현황
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </li><li class="m-menu__item  m-menu__item--submenu" aria-haspopup="true" data-menu-submenu-toggle="hover">
                                    <a href="#" class="m-menu__link m-menu__toggle">
                                        <i class="m-menu__link-icon fa fa-id-card"></i>
                                        <span class="m-menu__link-text">
                                            계정
                                        </span>
                                        <i class="m-menu__ver-arrow la la-angle-right"></i>
                                    </a>
                                    <div class="m-menu__submenu">
                                        <span class="m-menu__arrow"></span>
                                        <ul class="m-menu__subnav">
                                            <li class="m-menu__item  m-menu__item--parent" aria-haspopup="true">
                                                <a href="#" class="m-menu__link ">
                                                    <span class="m-menu__link-text">
                                                        계정
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="m-menu__item " aria-haspopup="true">
                                                <a href="/login/logout" class="m-menu__link ">
                                                    <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                        <span></span>
                                                    </i>
                                                    <span class="m-menu__link-text">
                                                        로그아웃
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                    <li class="m-menu__section">
                                        <h4 class="m-menu__section-text">
                                            MENU
                                        </h4>
                                        <i class="m-menu__section-icon flaticon-more-v3"></i>
                                    </li>
                                    <li class="m-menu__item  m-menu__item--submenu daemon-menu" aria-haspopup="true" data-menu-submenu-toggle="hover">
                                        <a href="#" class="m-menu__link m-menu__toggle">
                                            <i class="m-menu__link-icon fa fa-gear"></i>
                                            <span class="m-menu__link-text">
                                                암호화폐 데몬 설정
                                            </span>
                                            <i class="m-menu__ver-arrow la la-angle-right"></i>
                                        </a>
                                        <div class="m-menu__submenu">
                                            <span class="m-menu__arrow"></span>
                                            <ul class="m-menu__subnav">
                                                <li class="m-menu__item  m-menu__item--parent" aria-haspopup="true">
                                                    <a href="#" class="m-menu__link ">
                                                            <span class="m-menu__link-text">
                                                                암호화폐 데몬 설정
                                                            </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/daemon/btc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            비트코인(BTC)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/daemon/eth" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                             <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            이더리움(ETH)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/daemon/qtum" class="m-menu__link ">
                                                         <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                           <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            퀀텀(QTUM)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/daemon/sc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            시아(SC)
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="m-menu__item  m-menu__item--submenu backup-menu" aria-haspopup="true" data-menu-submenu-toggle="hover">
                                        <a href="#" class="m-menu__link m-menu__toggle">
                                            <i class="m-menu__link-icon fa fa-gear"></i>
                                            <span class="m-menu__link-text">
                                                암호화폐 데몬 백업파일
                                            </span>
                                            <i class="m-menu__ver-arrow la la-angle-right"></i>
                                        </a>
                                        <div class="m-menu__submenu">
                                            <span class="m-menu__arrow"></span>
                                            <ul class="m-menu__subnav">
                                                <li class="m-menu__item  m-menu__item--parent" aria-haspopup="true">
                                                    <a href="#" class="m-menu__link ">
                                                            <span class="m-menu__link-text">
                                                                암호화폐 데몬 백업파일
                                                            </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/backup/btc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            비트코인(BTC)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/backup/eth" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                             <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            이더리움(ETH)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/backup/qtum" class="m-menu__link ">
                                                         <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                           <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            퀀텀(QTUM)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/backup/sc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            시아(SC)
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="m-menu__item  m-menu__item--submenu schedule-menu" aria-haspopup="true" data-menu-submenu-toggle="hover">
                                        <a href="#" class="m-menu__link m-menu__toggle">
                                            <i class="m-menu__link-icon fa fa-gear"></i>
                                            <span class="m-menu__link-text">
                                                암호화폐 데몬 백업파일 주기 설정
                                            </span>
                                            <i class="m-menu__ver-arrow la la-angle-right"></i>
                                        </a>
                                        <div class="m-menu__submenu">
                                            <span class="m-menu__arrow"></span>
                                            <ul class="m-menu__subnav">
                                                <li class="m-menu__item  m-menu__item--parent" aria-haspopup="true">
                                                    <a href="#" class="m-menu__link ">
                                                            <span class="m-menu__link-text">
                                                                암호화폐 데몬 백업파일 주기 설정
                                                            </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/schedule/btc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            비트코인(BTC)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/schedule/eth" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                             <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            이더리움(ETH)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/schedule/qtum" class="m-menu__link ">
                                                         <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                           <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            퀀텀(QTUM)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/schedule/sc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            시아(SC)
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="m-menu__item  m-menu__item--submenu interlock-menu" aria-haspopup="true" data-menu-submenu-toggle="hover">
                                        <a href="#" class="m-menu__link m-menu__toggle" style="letter-spacing: -1px;">
                                            <i class="m-menu__link-icon fa fa-gear"></i>
                                            <span class="m-menu__link-text">
                                                    데몬 연동프로그램 설정
                                                </span>
                                            <i class="m-menu__ver-arrow la la-angle-right"></i>
                                        </a>
                                        <div class="m-menu__submenu">
                                            <span class="m-menu__arrow"></span>
                                            <ul class="m-menu__subnav">
                                                <li class="m-menu__item  m-menu__item--parent" aria-haspopup="true">
                                                    <a href="#" class="m-menu__link ">
                                                        <span class="m-menu__link-text">
                                                            데몬 연동프로그램 설정
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/interlock/btc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            비트코인(BTC)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/interlock/eth" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            이더리움(ETH)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/interlock/qtum" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            퀀텀(QTUM)
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/interlock/sc" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            시아(SC)
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="m-menu__item  m-menu__item--submenu option-menu" aria-haspopup="true" data-menu-submenu-toggle="hover">
                                        <a href="#" class="m-menu__link m-menu__toggle" style="letter-spacing: -1px;">
                                            <i class="m-menu__link-icon fa fa-gear"></i>
                                            <span class="m-menu__link-text">
                                                   설정
                                                </span>
                                            <i class="m-menu__ver-arrow la la-angle-right"></i>
                                        </a>
                                        <div class="m-menu__submenu">
                                            <span class="m-menu__arrow"></span>
                                            <ul class="m-menu__subnav">
                                                <li class="m-menu__item  m-menu__item--parent" aria-haspopup="true">
                                                    <a href="#" class="m-menu__link ">
                                                        <span class="m-menu__link-text">
                                                            설정
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="m-menu__item " aria-haspopup="true">
                                                    <a href="/option/alertMember" class="m-menu__link ">
                                                        <i class="m-menu__link-bullet m-menu__link-bullet--dot">
                                                            <span></span>
                                                        </i>
                                                        <span class="m-menu__link-text">
                                                            알림 계정설정
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                <%}
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                %>
                <!-- END: Aside Menu -->
            </div>
            <!-- END: Left Aside -->