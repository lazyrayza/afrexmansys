import "bootstrap";
require("chartkick")
require("chart.js")
import domtoimage from 'dom-to-image';

import { loadDynamicHomeText } from '../components/home';
loadDynamicHomeText();

import { loadDynamicBannerText } from '../components/profile.js.erb';
loadDynamicBannerText();

